package tanghaoli;

public class PredictionService {
    public String predict(String topic) {
        if ("body".equals(topic)) {
            return "体重体脂预测：按当前模拟趋势，未来 2 周体重可能小幅下降，体脂变化需结合运动记录判断。";
        }
        if ("lifestyle".equals(topic)) {
            return "生活方式预测：若维持当前运动频率，活动消耗趋于稳定；睡眠波动仍需继续观察。";
        }
        return "趋势预测：当前样本数据不足，建议连续记录 7 天后再生成更可靠的预测。";
    }
}
