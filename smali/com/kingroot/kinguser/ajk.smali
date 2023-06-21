.class public Lcom/kingroot/kinguser/ajk;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static zo()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/ajf;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v3, 0x1ed

    const/4 v6, 0x2

    const/4 v4, -0x1

    const/4 v1, 0x0

    .line 14
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 16
    sget-object v11, Lcom/kingroot/kinguser/bha;->bpy:Ljava/lang/String;

    .line 17
    sget-object v0, Lcom/kingroot/kinguser/bha;->bpz:Ljava/lang/String;

    .line 18
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 19
    sget-object v0, Lcom/kingroot/kinguser/bha;->bpA:Ljava/lang/String;

    .line 21
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_5

    .line 22
    sget-object v10, Lcom/kingroot/kinguser/bha;->bpB:Ljava/lang/String;

    .line 24
    :goto_0
    new-instance v13, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;

    new-instance v0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;

    const-string v9, "u:object_r:system_file:s0"

    move v2, v1

    move v5, v4

    move v7, v1

    move v8, v1

    invoke-direct/range {v0 .. v11}, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;-><init>(IIIIIIZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v13, v0}, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;-><init>(Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    new-instance v13, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;

    new-instance v0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;

    const-string v9, "u:object_r:system_file:s0"

    sget-object v10, Lcom/kingroot/kinguser/bha;->bpr:Ljava/lang/String;

    sget-object v11, Lcom/kingroot/kinguser/bha;->bpp:Ljava/lang/String;

    move v2, v1

    move v5, v4

    move v7, v1

    move v8, v1

    invoke-direct/range {v0 .. v11}, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;-><init>(IIIIIIZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v13, v0}, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;-><init>(Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    new-instance v13, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;

    new-instance v0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;

    const-string v9, "u:object_r:system_file:s0"

    sget-object v10, Lcom/kingroot/kinguser/bha;->bpq:Ljava/lang/String;

    sget-object v11, Lcom/kingroot/kinguser/bha;->bpm:Ljava/lang/String;

    move v2, v1

    move v5, v4

    move v7, v1

    move v8, v1

    invoke-direct/range {v0 .. v11}, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;-><init>(IIIIIIZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v13, v0}, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;-><init>(Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    new-instance v13, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;

    new-instance v0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;

    const-string v9, "u:object_r:system_file:s0"

    sget-object v10, Lcom/kingroot/kinguser/bha;->bps:Ljava/lang/String;

    sget-object v11, Lcom/kingroot/kinguser/bha;->bpn:Ljava/lang/String;

    move v2, v1

    move v5, v4

    move v7, v1

    move v8, v1

    invoke-direct/range {v0 .. v11}, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;-><init>(IIIIIIZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v13, v0}, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;-><init>(Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    new-instance v13, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;

    new-instance v0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;

    const-string v9, "u:object_r:system_file:s0"

    sget-object v10, Lcom/kingroot/kinguser/bha;->bpt:Ljava/lang/String;

    sget-object v11, Lcom/kingroot/kinguser/bha;->bpo:Ljava/lang/String;

    move v2, v1

    move v5, v4

    move v7, v1

    move v8, v1

    invoke-direct/range {v0 .. v11}, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;-><init>(IIIIIIZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v13, v0}, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;-><init>(Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    sget-object v0, Lcom/kingroot/kinguser/bha;->bpE:Ljava/lang/String;

    .line 80
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 81
    sget-object v0, Lcom/kingroot/kinguser/bha;->bpG:Ljava/lang/String;

    .line 83
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4

    .line 84
    sget-object v10, Lcom/kingroot/kinguser/bha;->bpI:Ljava/lang/String;

    .line 86
    :goto_1
    new-instance v13, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;

    new-instance v0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;

    const-string v9, "u:object_r:system_file:s0"

    sget-object v11, Lcom/kingroot/kinguser/bha;->bpC:Ljava/lang/String;

    move v2, v1

    move v5, v4

    move v7, v1

    move v8, v1

    invoke-direct/range {v0 .. v11}, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;-><init>(IIIIIIZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v13, v0}, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;-><init>(Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    sget-object v0, Lcom/kingroot/kinguser/bha;->bpF:Ljava/lang/String;

    .line 98
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 99
    sget-object v0, Lcom/kingroot/kinguser/bha;->bpH:Ljava/lang/String;

    .line 101
    :cond_2
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    .line 102
    sget-object v10, Lcom/kingroot/kinguser/bha;->bpJ:Ljava/lang/String;

    .line 104
    :goto_2
    new-instance v13, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;

    new-instance v0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;

    const-string v9, "u:object_r:system_file:s0"

    sget-object v11, Lcom/kingroot/kinguser/bha;->bpD:Ljava/lang/String;

    move v2, v1

    move v5, v4

    move v7, v1

    move v8, v1

    invoke-direct/range {v0 .. v11}, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;-><init>(IIIIIIZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v13, v0}, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;-><init>(Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    return-object v12

    :cond_3
    move-object v10, v0

    goto :goto_2

    :cond_4
    move-object v10, v0

    goto :goto_1

    :cond_5
    move-object v10, v0

    goto/16 :goto_0
.end method
