package tanghaoli;

public class AdviceService {
    public String generate(String topic) {
        if ("body".equals(topic)) {
            return "体重体脂建议：结合近 30 天趋势，保持稳定记录，优先关注饮食结构、睡眠和力量训练。";
        }
        if ("chronic".equals(topic)) {
            return "慢性病指标建议：关注连续波动和异常值，记录用药、饮食和运动背景，必要时咨询医生。";
        }
        if ("lifestyle".equals(topic)) {
            return "运动睡眠建议：优先保证规律睡眠，再逐步提高中高强度活动时间。";
        }
        return "综合建议：继续保持数据记录，结合历史趋势观察健康变化。";
    }
}
