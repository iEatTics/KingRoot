.class Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/zk$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;->yQ()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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


# instance fields
.field final synthetic atk:Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$1;->atk:Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public N(Ljava/util/List;)Ljava/lang/Boolean;
    .locals 9
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
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 157
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v2

    .line 158
    invoke-virtual {v2, v7}, Lcom/kingroot/kinguser/abc;->isRootPermition(Z)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 159
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 161
    iget-object v0, p0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$1;->atk:Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;

    invoke-static {v0}, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;->a(Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;)Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;

    move-result-object v0

    iget v0, v0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;->atn:I

    if-eq v0, v8, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$1;->atk:Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;

    .line 162
    invoke-static {v0}, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;->a(Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;)Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;

    move-result-object v0

    iget v0, v0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;->atn:I

    if-ne v0, v7, :cond_1

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$1;->atk:Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;

    invoke-static {v0}, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;->a(Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;)Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;

    move-result-object v0

    iget v0, v0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;->atn:I

    packed-switch v0, :pswitch_data_0

    .line 179
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$1;->atk:Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;

    invoke-static {v0}, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;->a(Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;)Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;->atr:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/aar;->r(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 183
    iget-object v0, p0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$1;->atk:Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;

    invoke-static {v0}, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;->a(Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;)Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;->atr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v7, :cond_2

    iget-object v0, p0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$1;->atk:Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;

    .line 184
    invoke-static {v0}, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;->a(Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;)Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;->atr:Ljava/lang/String;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 185
    iget-object v0, p0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$1;->atk:Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;

    invoke-static {v0}, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;->a(Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;)Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;

    move-result-object v0

    iget-object v4, p0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$1;->atk:Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;

    .line 186
    invoke-static {v4}, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;->a(Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;)Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;->atr:Ljava/lang/String;

    iget-object v5, p0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$1;->atk:Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;

    invoke-static {v5}, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;->a(Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;)Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;->atr:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;->atr:Ljava/lang/String;

    :cond_2
    move v0, v1

    .line 190
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$1;->atk:Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;

    invoke-static {v4}, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;->a(Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;)Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;->atr:Ljava/lang/String;

    sget-char v5, Ljava/io/File;->separatorChar:C

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_6

    .line 192
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$1;->atk:Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;

    invoke-static {v5}, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;->a(Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;)Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;->atr:Ljava/lang/String;

    invoke-virtual {v5, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 195
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "/system"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "/system/bin"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 196
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "/system/xbin"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "/data"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 201
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_4

    .line 206
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/kingroot/kinguser/aas;->XY:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/kingroot/kinguser/aas;->XW:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/kingroot/kinguser/aas;->XX:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    const-string v5, "chcon u:object_r:system_file:s0 %1$s;/system/bin/toolbox chcon u:object_r:system_file:s0 %1$s"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 166
    :pswitch_0
    invoke-static {v2}, Lcom/kingroot/kinguser/aio;->d(Lcom/kingroot/kinguser/abc;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    sget-object v0, Lcom/kingroot/kinguser/aas;->XR:Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 171
    :pswitch_1
    sget-object v0, Lcom/kingroot/kinguser/aas;->XT:Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 210
    :cond_4
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_5

    .line 216
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/kingroot/kinguser/aar;->r(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 217
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/kingroot/kinguser/aas;->XV:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/kingroot/kinguser/aas;->XY:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/kingroot/kinguser/aas;->XW:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/kingroot/kinguser/aas;->XX:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    const-string v5, "chcon u:object_r:system_file:s0 %1$s;/system/bin/toolbox chcon u:object_r:system_file:s0 %1$s"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 228
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/kingroot/kinguser/aas;->XW:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/kingroot/kinguser/aas;->XX:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    const-string v5, "chcon u:object_r:system_file:s0 %1$s;/system/bin/toolbox chcon u:object_r:system_file:s0 %1$s"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 235
    :cond_6
    iget-object v0, p0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$1;->atk:Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;

    invoke-static {v0}, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;->b(Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/kingroot/kinguser/aas;->XV:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$1;->atk:Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;

    invoke-static {v4}, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;->a(Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;)Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;->atr:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    const-string v0, "cat %s > %s"

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$1;->atk:Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;

    invoke-static {v5}, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;->a(Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;)Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;->atq:Ljava/lang/String;

    aput-object v5, v4, v1

    iget-object v5, p0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$1;->atk:Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;

    invoke-static {v5}, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;->a(Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;)Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;->atr:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    :cond_7
    iget-object v0, p0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$1;->atk:Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;

    invoke-static {v0}, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;->c(Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;)I

    move-result v0

    invoke-static {v0, v7}, Lcom/kingroot/kinguser/yx;->B(II)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 251
    const-string v0, "chown %d.%d %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$1;->atk:Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;

    .line 252
    invoke-static {v5}, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;->a(Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;)Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;

    move-result-object v5

    iget v5, v5, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;->WN:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    iget-object v5, p0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$1;->atk:Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;

    .line 253
    invoke-static {v5}, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;->a(Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;)Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;

    move-result-object v5

    iget v5, v5, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;->WO:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$1;->atk:Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;

    .line 254
    invoke-static {v5}, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;->a(Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;)Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;->atr:Ljava/lang/String;

    aput-object v5, v4, v8

    .line 251
    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    iget-object v0, p0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$1;->atk:Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;

    iget-object v4, p0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$1;->atk:Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;

    invoke-static {v4}, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;->c(Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;)I

    move-result v4

    or-int/lit8 v4, v4, 0x2

    invoke-static {v0, v4}, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;->a(Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;I)I

    .line 261
    :cond_8
    iget-object v0, p0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$1;->atk:Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;

    invoke-static {v0}, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;->c(Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;)I

    move-result v0

    invoke-static {v0, v8}, Lcom/kingroot/kinguser/yx;->B(II)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 265
    const-string v0, "chmod 0%o %s"

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$1;->atk:Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;

    .line 266
    invoke-static {v5}, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;->a(Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;)Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;

    move-result-object v5

    iget v5, v5, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;->mode:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    iget-object v5, p0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$1;->atk:Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;

    .line 267
    invoke-static {v5}, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;->a(Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;)Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;->atr:Ljava/lang/String;

    aput-object v5, v4, v7

    .line 265
    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    :cond_9
    iget-object v0, p0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$1;->atk:Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;

    invoke-static {v0}, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;->c(Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;)I

    move-result v0

    const/16 v4, 0x8

    invoke-static {v0, v4}, Lcom/kingroot/kinguser/yx;->B(II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 275
    const-string v0, "chcon %1$s %2$s;/system/bin/toolbox chcon %1$s %2$s"

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$1;->atk:Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;

    .line 276
    invoke-static {v5}, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;->a(Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;)Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;->WP:Ljava/lang/String;

    aput-object v5, v4, v1

    iget-object v5, p0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$1;->atk:Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;

    .line 277
    invoke-static {v5}, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;->a(Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;)Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;->atr:Ljava/lang/String;

    aput-object v5, v4, v7

    .line 275
    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    :cond_a
    iget-object v0, p0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$1;->atk:Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;

    invoke-static {v0}, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;->a(Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;)Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;

    move-result-object v0

    iget-boolean v0, v0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;->atp:Z

    if-eqz v0, :cond_b

    .line 282
    iget-object v0, p0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$1;->atk:Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;

    invoke-static {v0}, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;->a(Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;)Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;->atr:Ljava/lang/String;

    invoke-static {v0, v7}, Lcom/kingroot/kinguser/aar;->r(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 285
    :cond_b
    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/abc;->runRootCommands(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 286
    if-eqz v4, :cond_d

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-ne v0, v2, :cond_d

    move v2, v1

    .line 288
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_d

    .line 289
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/utils/system/VTCmdResult;

    invoke-virtual {v0}, Lcom/kingroot/common/utils/system/VTCmdResult;->success()Z

    move-result v0

    if-nez v0, :cond_c

    .line 291
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/utils/system/VTCmdResult;

    iget-object v0, v0, Lcom/kingroot/common/utils/system/VTCmdResult;->mCmdFlag:Ljava/lang/String;

    .line 292
    sget-object v3, Lcom/kingroot/kinguser/aas;->XV:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    sget-object v3, Lcom/kingroot/kinguser/aas;->XY:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 293
    invoke-static {}, Lcom/kingroot/kinguser/aar;->pQ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    sget-object v3, Lcom/kingroot/kinguser/aas;->XQ:Ljava/lang/String;

    .line 294
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 295
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 304
    :goto_3
    return-object v0

    .line 288
    :cond_c
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 301
    :cond_d
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_3

    .line 304
    :cond_e
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_3

    .line 163
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic execute(Ljava/util/List;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 153
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$1;->N(Ljava/util/List;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
