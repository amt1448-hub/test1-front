import React from "react";
import axios from "axios";

function App() {
	const [data, setData] = React.useState();
	const url = "https://test1-back-1049817508063.asia-northeast1.run.app";

	const GetData = () => {
		try {
			axios.get(url).then((res) => {
				setData(res.data);
			});
		} catch (error) {
		    console.log(error.message);
		}
	};
	return (
		<div>
			<div>ここに処理を書いていきます</div>
			{data ? <div>{data.Hello}</div> : <button onClick={GetData}>データを取得</button>}
		</div>
	);
}

export default App;
