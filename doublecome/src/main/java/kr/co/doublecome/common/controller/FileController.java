package kr.co.doublecome.common.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import kr.co.doublecome.common.service.FileService;
import kr.co.doublecome.repository.vo.UtilFile;

@Controller
@RequestMapping("/file")
public class FileController {
	@Autowired
	private FileService service;
	
//	@Autowired
//	private AucitonDetailServiceImpl service;
//	
//	@RequestMapping("/imgLoad.do")
//	public void imgLoad(UtilFile f, HttpServletResponse res) throws Exception {
//		
//		String fileDir = f.getFilePath();
//		String fileName = f.getFileSystemName();
//		File file = new File(fileDir, fileName);
//		
//        res.setHeader("Content-Length", String.valueOf(file.length()));
//        res.setHeader("Content-Disposition", "inline;");
//        Files.copy(file.toPath(), res.getOutputStream());
//	}
	
	@RequestMapping("/uploadFile.do")
	public UtilFile uploadFile(UtilFile uFile) {
		return service.uploadFile(uFile);
	}
	
	@RequestMapping("/downLoadFile.do")
	public void downLoadFile(int fileNo, HttpServletResponse res) {
		service.downLoadFile(fileNo, res);
	}
	
	@PostMapping("/photoUpload.do")
	@ResponseBody
	public String AjaxFileUpload(@RequestParam("file") MultipartFile file, HttpServletResponse res) {
		UtilFile util = new UtilFile();
		List<MultipartFile> attach = new ArrayList<>();
		attach.add(file);
		util.setAttach(attach);
		util = service.uploadFile(util);

		return "/doublecome/file/downLoadFile.do" + "?fileNo=" + util.getFileNo();
	}
}
