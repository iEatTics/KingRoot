.class public Loicq/wlogin_sdk/a/a;
.super Loicq/wlogin_sdk/a/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Loicq/wlogin_sdk/a/c;-><init>()V

    const/16 v0, 0x10

    iput v0, p0, Loicq/wlogin_sdk/a/a;->b:I

    return-void
.end method


# virtual methods
.method public a(JIB[B[BB[BI[B[B[B[B)[B
    .locals 11

    const/16 v1, 0xa

    new-array v5, v1, [I

    fill-array-data v5, :array_0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    array-length v7, v5

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    move v4, v1

    :goto_0
    if-ge v4, v7, :cond_1

    const/4 v1, 0x0

    new-array v1, v1, [B

    aget v8, v5, v4

    packed-switch v8, :pswitch_data_0

    :goto_1
    :pswitch_0
    array-length v8, v1

    const/4 v9, 0x2

    if-le v8, v9, :cond_0

    add-int/lit8 v3, v3, 0x1

    array-length v8, v1

    add-int/2addr v2, v8

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    move v1, v2

    move v2, v3

    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v2

    move v2, v1

    goto :goto_0

    :pswitch_1
    new-instance v1, Loicq/wlogin_sdk/b/a;

    const/4 v8, 0x2

    invoke-direct {v1, v8}, Loicq/wlogin_sdk/b/a;-><init>(I)V

    invoke-virtual {v1, p3}, Loicq/wlogin_sdk/b/a;->a(I)V

    invoke-virtual {v1}, Loicq/wlogin_sdk/b/a;->a()[B

    move-result-object v1

    goto :goto_1

    :pswitch_2
    new-instance v1, Loicq/wlogin_sdk/b/a;

    const/4 v8, 0x3

    invoke-direct {v1, v8}, Loicq/wlogin_sdk/b/a;-><init>(I)V

    move/from16 v0, p7

    invoke-virtual {v1, v0}, Loicq/wlogin_sdk/b/a;->a(B)V

    invoke-virtual {v1}, Loicq/wlogin_sdk/b/a;->a()[B

    move-result-object v1

    goto :goto_1

    :pswitch_3
    new-instance v1, Loicq/wlogin_sdk/b/a;

    const/16 v8, 0xa

    invoke-direct {v1, v8}, Loicq/wlogin_sdk/b/a;-><init>(I)V

    move-object/from16 v0, p8

    array-length v8, v0

    move-object/from16 v0, p8

    invoke-virtual {v1, v0, v8}, Loicq/wlogin_sdk/b/a;->a([BI)V

    invoke-virtual {v1}, Loicq/wlogin_sdk/b/a;->a()[B

    move-result-object v1

    goto :goto_1

    :pswitch_4
    new-instance v1, Loicq/wlogin_sdk/b/a;

    const/16 v8, 0xd

    invoke-direct {v1, v8}, Loicq/wlogin_sdk/b/a;-><init>(I)V

    move/from16 v0, p9

    invoke-virtual {v1, v0}, Loicq/wlogin_sdk/b/a;->a(I)V

    invoke-virtual {v1}, Loicq/wlogin_sdk/b/a;->a()[B

    move-result-object v1

    goto :goto_1

    :pswitch_5
    new-instance v1, Loicq/wlogin_sdk/b/a;

    const/16 v8, 0xe

    invoke-direct {v1, v8}, Loicq/wlogin_sdk/b/a;-><init>(I)V

    move-object/from16 v0, p10

    array-length v8, v0

    move-object/from16 v0, p10

    invoke-virtual {v1, v0, v8}, Loicq/wlogin_sdk/b/a;->a([BI)V

    invoke-virtual {v1}, Loicq/wlogin_sdk/b/a;->a()[B

    move-result-object v1

    goto :goto_1

    :pswitch_6
    new-instance v1, Loicq/wlogin_sdk/b/a;

    const/16 v8, 0x12

    invoke-direct {v1, v8}, Loicq/wlogin_sdk/b/a;-><init>(I)V

    move-object/from16 v0, p11

    array-length v8, v0

    move-object/from16 v0, p11

    invoke-virtual {v1, v0, v8}, Loicq/wlogin_sdk/b/a;->a([BI)V

    invoke-virtual {v1}, Loicq/wlogin_sdk/b/a;->a()[B

    move-result-object v1

    goto :goto_1

    :pswitch_7
    new-instance v1, Loicq/wlogin_sdk/b/a;

    const/16 v8, 0x13

    invoke-direct {v1, v8}, Loicq/wlogin_sdk/b/a;-><init>(I)V

    move-object/from16 v0, p12

    array-length v8, v0

    move-object/from16 v0, p12

    invoke-virtual {v1, v0, v8}, Loicq/wlogin_sdk/b/a;->a([BI)V

    invoke-virtual {v1}, Loicq/wlogin_sdk/b/a;->a()[B

    move-result-object v1

    goto/16 :goto_1

    :pswitch_8
    new-instance v1, Loicq/wlogin_sdk/b/a;

    const/16 v8, 0x14

    invoke-direct {v1, v8}, Loicq/wlogin_sdk/b/a;-><init>(I)V

    move-object/from16 v0, p13

    array-length v8, v0

    move-object/from16 v0, p13

    invoke-virtual {v1, v0, v8}, Loicq/wlogin_sdk/b/a;->a([BI)V

    invoke-virtual {v1}, Loicq/wlogin_sdk/b/a;->a()[B

    move-result-object v1

    goto/16 :goto_1

    :pswitch_9
    new-instance v1, Loicq/wlogin_sdk/b/a;

    const/16 v8, 0x17

    invoke-direct {v1, v8}, Loicq/wlogin_sdk/b/a;-><init>(I)V

    const/4 v8, 0x5

    invoke-virtual {v1, v8}, Loicq/wlogin_sdk/b/a;->a(B)V

    invoke-virtual {v1}, Loicq/wlogin_sdk/b/a;->a()[B

    move-result-object v1

    goto/16 :goto_1

    :pswitch_a
    new-instance v1, Loicq/wlogin_sdk/b/a;

    const/16 v8, 0x18

    invoke-direct {v1, v8}, Loicq/wlogin_sdk/b/a;-><init>(I)V

    sget-object v8, Loicq/wlogin_sdk/request/u;->J:[B

    sget-object v9, Loicq/wlogin_sdk/request/u;->J:[B

    array-length v9, v9

    invoke-virtual {v1, v8, v9}, Loicq/wlogin_sdk/b/a;->a([BI)V

    invoke-virtual {v1}, Loicq/wlogin_sdk/b/a;->a()[B

    move-result-object v1

    goto/16 :goto_1

    :cond_1
    add-int/lit8 v1, v2, 0x1

    new-array v5, v1, [B

    const/4 v1, 0x0

    int-to-byte v2, v3

    invoke-static {v5, v1, v2}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    const/4 v2, 0x1

    const/4 v1, 0x0

    move v4, v2

    move v2, v1

    :goto_2
    if-ge v2, v3, :cond_2

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    const/4 v7, 0x0

    array-length v8, v1

    invoke-static {v1, v7, v5, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v1

    add-int/2addr v4, v1

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    :cond_2
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v2, p1, p2}, Ljava/io/DataOutputStream;->writeLong(J)V

    invoke-virtual {v2, p3}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v2, p4}, Ljava/io/DataOutputStream;->writeByte(I)V

    move-object/from16 v0, p5

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write([B)V

    const/4 v3, 0x0

    array-length v4, v5

    move-object/from16 v0, p6

    invoke-static {v5, v3, v4, v0}, Loicq/wlogin_sdk/tools/cryptor;->encrypt([BII[B)[B

    move-result-object v3

    if-nez v3, :cond_3

    const-string v1, "encrypt failed"

    const-string v2, ""

    invoke-static {v1, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_3
    return-object v1

    :cond_3
    array-length v4, v3

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {p0, v3}, Loicq/wlogin_sdk/a/a;->a([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_3

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRequest failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_3

    :array_0
    .array-data 4
        0x2
        0x3
        0xa
        0xd
        0xe
        0x12
        0x13
        0x14
        0x17
        0x18
    .end array-data

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
