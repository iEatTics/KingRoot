.class public Loicq/wlogin_sdk/b/z;
.super Loicq/wlogin_sdk/b/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Loicq/wlogin_sdk/b/b;-><init>()V

    const/16 v0, 0x11f

    iput v0, p0, Loicq/wlogin_sdk/b/z;->h:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    iget-object v0, p0, Loicq/wlogin_sdk/b/z;->g:[B

    iget v1, p0, Loicq/wlogin_sdk/b/z;->e:I

    add-int/lit8 v1, v1, 0x4

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->buf_to_int32([BI)I

    move-result v0

    return v0
.end method

.method public f()Ljava/lang/Boolean;
    .locals 2

    iget v0, p0, Loicq/wlogin_sdk/b/z;->f:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method
