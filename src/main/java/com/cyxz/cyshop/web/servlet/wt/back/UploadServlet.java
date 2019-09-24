package com.cyxz.cyshop.web.servlet.wt.back;

import com.cyxz.cyshop.web.servlet.BaseServlet;
import com.cyxz.cyshop.web.util.PathSubUtils;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.omg.PortableInterceptor.RequestInfo;

import javax.servlet.ServletContext;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.util.Iterator;
import java.util.List;

/**
 * @version 1.0.0
 * @ClassName UploadServlet
 * @Description TODO
 * @Author Administrator
 * @date 2019/9/2410:09
 */
@WebServlet("/upload")
public class UploadServlet extends BaseServlet {
    public void uploadImg(HttpServletRequest request, HttpServletResponse response) throws Exception {
        ServletContext application = request.getServletContext();
        if (ServletFileUpload.isMultipartContent(request)) {
            // 文件上传操作

            // 声明一个变量，用来保存文件上传的真实路径（从WEB-INF/web.xml文件解析得到）
            String rootPath = application.getInitParameter("upload");

            DiskFileItemFactory factory = new DiskFileItemFactory();
            //设置缓存区大小
            factory.setSizeThreshold(1000);
            //设置上传文件临时路径（从WEB-INF/web.xml文件解析得到）
            factory.setRepository(new File(application.getInitParameter("temp")));

            ServletFileUpload servletFileUpload = new ServletFileUpload(factory);
            // 解析请求的文件数据
            List<FileItem> fileItems = servletFileUpload.parseRequest(request);

            //获得集合迭代器
            Iterator<FileItem> iterator = fileItems.iterator();


            while (iterator.hasNext()){
                FileItem item = iterator.next();

                    // 保存文件
                    File file = new File(rootPath + item.getName());
                    item.write(file);
                String abPath = rootPath + item.getName();
                String imgUrl = PathSubUtils.getImgPath(abPath);
                System.out.println(imgUrl);
                System.out.println("根据对应的sku_id写入sku_img数据库");
                response.getWriter().write(imgUrl);

            }


        }
    }
}
