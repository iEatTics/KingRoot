.class public Loicq/wlogin_sdk/b/av;
.super Loicq/wlogin_sdk/b/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Loicq/wlogin_sdk/b/b;-><init>()V

    const/16 v0, 0x153

    iput v0, p0, Loicq/wlogin_sdk/b/av;->h:I

    return-void
.end method


# virtual methods
.method public a(I)[B
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    new-array v1, v1, [B

    invoke-static {v1, v0, p1}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    iget v0, p0, Loicq/wlogin_sdk/b/av;->h:I

    invoke-virtual {p0, v0}, Loicq/wlogin_sdk/b/av;->b(I)V

    array-length v0, v1

    invoke-virtual {p0, v1, v0}, Loicq/wlogin_sdk/b/av;->c([BI)V

    invoke-virtual {p0}, Loicq/wlogin_sdk/b/av;->e()V

    invoke-virtual {p0}, Loicq/wlogin_sdk/b/av;->b()[B

    move-result-object v0

    return-object v0
.end method
