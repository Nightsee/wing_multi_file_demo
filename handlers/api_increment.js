export async function Inc(increment){
    let count = await increment();
    return {
        status: 200,
        body: JSON.stringify({count: count})
    }
}
