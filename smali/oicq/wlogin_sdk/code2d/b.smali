.class public Loicq/wlogin_sdk/code2d/b;
.super Ljava/lang/Object;


# static fields
.field public static _seq:I

.field public static _status:Loicq/wlogin_sdk/code2d/c;

.field public static _version:I


# instance fields
.field public _cmd:I

.field public _head_len:I

.field public _role:I

.field public _sub_cmd:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Loicq/wlogin_sdk/code2d/b;->_seq:I

    const/16 v0, 0x32

    sput v0, Loicq/wlogin_sdk/code2d/b;->_version:I

    new-instance v0, Loicq/wlogin_sdk/code2d/c;

    invoke-direct {v0}, Loicq/wlogin_sdk/code2d/c;-><init>()V

    sput-object v0, Loicq/wlogin_sdk/code2d/b;->_status:Loicq/wlogin_sdk/code2d/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x72

    iput v0, p0, Loicq/wlogin_sdk/code2d/b;->_role:I

    iput v1, p0, Loicq/wlogin_sdk/code2d/b;->_cmd:I

    iput v1, p0, Loicq/wlogin_sdk/code2d/b;->_sub_cmd:I

    const/16 v0, 0x2b

    iput v0, p0, Loicq/wlogin_sdk/code2d/b;->_head_len:I

    return-void
.end method


# virtual methods
.method protected fill_staff([B[BI)I
    .locals 3

    array-length v0, p2

    invoke-static {p1, p3, v0}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    add-int/lit8 v0, p3, 0x2

    const/4 v1, 0x0

    array-length v2, p2

    invoke-static {p2, v1, p1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p2

    add-int/2addr v0, v1

    return v0
.end method

.method protected getAppInfo(JJ)[B
    .locals 5

    const/4 v4, 0x0

    const/16 v0, 0x1c

    sget-object v1, Loicq/wlogin_sdk/request/u;->E:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x2

    sget-object v2, Loicq/wlogin_sdk/request/u;->G:[B

    array-length v2, v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x2

    sget-object v2, Loicq/wlogin_sdk/request/u;->H:[B

    array-length v2, v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    new-array v0, v0, [B

    const-wide/16 v2, 0x5

    invoke-static {v0, v4, v2, v3}, Loicq/wlogin_sdk/tools/util;->int64_to_buf32([BIJ)V

    const/4 v1, 0x4

    invoke-static {v0, v1, p1, p2}, Loicq/wlogin_sdk/tools/util;->int64_to_buf32([BIJ)V

    const/16 v1, 0x8

    invoke-static {v0, v1, p3, p4}, Loicq/wlogin_sdk/tools/util;->int64_to_buf32([BIJ)V

    const/16 v1, 0xc

    sget-object v2, Loicq/wlogin_sdk/request/u;->A:[B

    sget-object v3, Loicq/wlogin_sdk/request/u;->A:[B

    array-length v3, v3

    invoke-static {v2, v4, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v1, Loicq/wlogin_sdk/request/u;->A:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0xc

    sget-object v2, Loicq/wlogin_sdk/request/u;->E:[B

    invoke-virtual {p0, v0, v2, v1}, Loicq/wlogin_sdk/code2d/b;->fill_staff([B[BI)I

    move-result v1

    sget-object v2, Loicq/wlogin_sdk/request/u;->G:[B

    invoke-virtual {p0, v0, v2, v1}, Loicq/wlogin_sdk/code2d/b;->fill_staff([B[BI)I

    move-result v1

    sget-object v2, Loicq/wlogin_sdk/request/u;->H:[B

    invoke-virtual {p0, v0, v2, v1}, Loicq/wlogin_sdk/code2d/b;->fill_staff([B[BI)I

    return-object v0
.end method

.method public get_cmd()I
    .locals 1

    iget v0, p0, Loicq/wlogin_sdk/code2d/b;->_cmd:I

    return v0
.end method

.method protected get_request(JZ[B)[B
    .locals 7

    const/4 v2, 0x1

    const/4 v5, 0x3

    const/4 v4, 0x0

    iget v0, p0, Loicq/wlogin_sdk/code2d/b;->_head_len:I

    array-length v1, p4

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x2

    invoke-static {v0, v4, v1}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    array-length v1, v0

    invoke-static {v0, v2, v1}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    iget v1, p0, Loicq/wlogin_sdk/code2d/b;->_cmd:I

    invoke-static {v0, v5, v1}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    const/16 v1, 0x1a

    invoke-static {v0, v1, v5}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    const/16 v1, 0x1b

    if-eqz p3, :cond_0

    invoke-static {v0, v1, v4}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    :goto_0
    const/16 v1, 0x1d

    sget v2, Loicq/wlogin_sdk/code2d/b;->_version:I

    invoke-static {v0, v1, v2}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    const/16 v1, 0x1f

    sget v2, Loicq/wlogin_sdk/code2d/b;->_seq:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Loicq/wlogin_sdk/code2d/b;->_seq:I

    invoke-static {v0, v1, v2}, Loicq/wlogin_sdk/tools/util;->int32_to_buf([BII)V

    const/16 v1, 0x23

    invoke-static {v0, v1, p1, p2}, Loicq/wlogin_sdk/tools/util;->int64_to_buf([BIJ)V

    const/16 v1, 0x2b

    array-length v2, p4

    invoke-static {p4, v4, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p4

    add-int/lit8 v1, v1, 0x2b

    invoke-static {v0, v1, v5}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    add-int/lit8 v1, v1, 0x1

    return-object v0

    :cond_0
    invoke-static {v0, v1, v2}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    goto :goto_0
.end method

.method protected get_response([BI)[B
    .locals 4

    array-length v0, p1

    iget v1, p0, Loicq/wlogin_sdk/code2d/b;->_head_len:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    array-length v0, p1

    iget v1, p0, Loicq/wlogin_sdk/code2d/b;->_head_len:I

    sub-int/2addr v0, v1

    new-array v0, v0, [B

    iget v1, p0, Loicq/wlogin_sdk/code2d/b;->_head_len:I

    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {p1, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method
