.class final Lcom/kingroot/kinguser/aau$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/zk$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/aau;->b(Ljava/lang/String;Ljava/lang/String;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/kingroot/kinguser/zk$a",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public N(Ljava/util/List;)Ljava/lang/Boolean;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .prologue
    const/4 v13, 0x2

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 21
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 22
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 23
    invoke-interface {p1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 26
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v6

    .line 27
    invoke-virtual {v6, v5}, Lcom/kingroot/kinguser/abc;->isRootPermition(Z)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 28
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 31
    const-string v2, "IgnoredFlag"

    invoke-static {v2, v1, v3}, Lcom/kingroot/kinguser/aar;->c(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 35
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v5, :cond_0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 36
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_0
    move v2, v3

    .line 40
    :cond_1
    :goto_0
    sget-char v8, Ljava/io/File;->separatorChar:C

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v8, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    const/4 v8, -0x1

    if-eq v2, v8, :cond_4

    .line 42
    new-instance v8, Ljava/io/File;

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    const-string v10, "/data"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 50
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_2

    .line 53
    new-instance v9, Lcom/kingroot/common/utils/system/VTCommand;

    const-string v10, "CommonCmdFlag"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/kingroot/kinguser/aas;->XY:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/kingroot/common/utils/system/VTCommand;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    new-instance v9, Lcom/kingroot/common/utils/system/VTCommand;

    const-string v10, "CommonCmdFlag"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/kingroot/kinguser/aas;->XW:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/kingroot/common/utils/system/VTCommand;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    new-instance v9, Lcom/kingroot/common/utils/system/VTCommand;

    const-string v10, "CommonCmdFlag"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/kingroot/kinguser/aas;->XX:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/kingroot/common/utils/system/VTCommand;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    new-instance v9, Lcom/kingroot/common/utils/system/VTCommand;

    const-string v10, "CommonCmdFlag"

    const-string v11, "chcon u:object_r:system_data_file:s0 %1$s;/system/bin/toolbox chcon u:object_r:system_data_file:s0 %1$s"

    new-array v12, v5, [Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v12, v3

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v9, v10, v8}, Lcom/kingroot/common/utils/system/VTCommand;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 57
    :cond_2
    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-nez v9, :cond_3

    .line 62
    const-string v9, "IgnoredFlag"

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v3}, Lcom/kingroot/kinguser/aar;->c(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 63
    new-instance v9, Lcom/kingroot/common/utils/system/VTCommand;

    const-string v10, "IgnoredFlag"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/kingroot/kinguser/aas;->XV:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/kingroot/common/utils/system/VTCommand;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    new-instance v9, Lcom/kingroot/common/utils/system/VTCommand;

    const-string v10, "CommonCmdFlag"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/kingroot/kinguser/aas;->XY:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/kingroot/common/utils/system/VTCommand;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    new-instance v9, Lcom/kingroot/common/utils/system/VTCommand;

    const-string v10, "CommonCmdFlag"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/kingroot/kinguser/aas;->XW:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/kingroot/common/utils/system/VTCommand;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    new-instance v9, Lcom/kingroot/common/utils/system/VTCommand;

    const-string v10, "CommonCmdFlag"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/kingroot/kinguser/aas;->XX:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/kingroot/common/utils/system/VTCommand;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    new-instance v9, Lcom/kingroot/common/utils/system/VTCommand;

    const-string v10, "CommonCmdFlag"

    const-string v11, "chcon u:object_r:system_data_file:s0 %1$s;/system/bin/toolbox chcon u:object_r:system_data_file:s0 %1$s"

    new-array v12, v5, [Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v12, v3

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v9, v10, v8}, Lcom/kingroot/common/utils/system/VTCommand;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 73
    :cond_3
    new-instance v9, Lcom/kingroot/common/utils/system/VTCommand;

    const-string v10, "CommonCmdFlag"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/kingroot/kinguser/aas;->XW:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/kingroot/common/utils/system/VTCommand;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    new-instance v9, Lcom/kingroot/common/utils/system/VTCommand;

    const-string v10, "CommonCmdFlag"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/kingroot/kinguser/aas;->XX:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/kingroot/common/utils/system/VTCommand;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    new-instance v9, Lcom/kingroot/common/utils/system/VTCommand;

    const-string v10, "CommonCmdFlag"

    const-string v11, "chcon u:object_r:system_data_file:s0 %1$s;/system/bin/toolbox chcon u:object_r:system_data_file:s0 %1$s"

    new-array v12, v5, [Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v12, v3

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v9, v10, v8}, Lcom/kingroot/common/utils/system/VTCommand;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 80
    :cond_4
    const/4 v2, 0x4

    invoke-static {v4, v2}, Lcom/kingroot/kinguser/yx;->B(II)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 84
    new-instance v2, Lcom/kingroot/common/utils/system/VTCommand;

    const-string v8, "IgnoredFlag"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/kingroot/kinguser/aas;->XV:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v8, v9}, Lcom/kingroot/common/utils/system/VTCommand;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    new-instance v2, Lcom/kingroot/common/utils/system/VTCommand;

    const-string v8, "CommonCmdFlag"

    const-string v9, "cat %s > %s"

    new-array v10, v13, [Ljava/lang/Object;

    aput-object v0, v10, v3

    aput-object v1, v10, v5

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v8, v0}, Lcom/kingroot/common/utils/system/VTCommand;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    :cond_5
    invoke-static {v4, v5}, Lcom/kingroot/kinguser/yx;->B(II)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 93
    new-instance v0, Lcom/kingroot/common/utils/system/VTCommand;

    const-string v2, "CommonCmdFlag"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/kingroot/kinguser/aas;->XW:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v2, v8}, Lcom/kingroot/common/utils/system/VTCommand;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    or-int/lit8 v0, v4, 0x2

    .line 100
    :goto_1
    invoke-static {v0, v13}, Lcom/kingroot/kinguser/yx;->B(II)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 103
    new-instance v2, Lcom/kingroot/common/utils/system/VTCommand;

    const-string v4, "CommonCmdFlag"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/kingroot/kinguser/aas;->XX:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v4, v8}, Lcom/kingroot/common/utils/system/VTCommand;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    :cond_6
    const/16 v2, 0x8

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/yx;->B(II)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 110
    new-instance v0, Lcom/kingroot/common/utils/system/VTCommand;

    const-string v2, "CommonCmdFlag"

    const-string v4, "chcon u:object_r:system_file:s0 %1$s;/system/bin/toolbox chcon u:object_r:system_file:s0 %1$s"

    new-array v8, v5, [Ljava/lang/Object;

    aput-object v1, v8, v3

    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/kingroot/common/utils/system/VTCommand;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_7
    invoke-virtual {v6, v7}, Lcom/kingroot/kinguser/abc;->q(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    move v1, v3

    .line 114
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_a

    .line 115
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/utils/system/VTCmdResult;

    invoke-virtual {v0}, Lcom/kingroot/common/utils/system/VTCmdResult;->success()Z

    move-result v0

    if-nez v0, :cond_9

    .line 117
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/utils/system/VTCmdResult;

    iget-object v0, v0, Lcom/kingroot/common/utils/system/VTCmdResult;->mCmdFlag:Ljava/lang/String;

    .line 118
    const-string v4, "CommonCmdFlag"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 128
    :cond_8
    :goto_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 114
    :cond_9
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_a
    move v3, v5

    goto :goto_3

    :cond_b
    move v0, v4

    goto :goto_1
.end method

.method public synthetic execute(Ljava/util/List;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/aau$1;->N(Ljava/util/List;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
