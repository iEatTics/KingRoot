.class final Lcom/kingroot/kinguser/aba$1;
.super Lcom/kingroot/kinguser/wo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/aba;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/kingroot/kinguser/wo;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/16 v0, 0xf

    const/4 v5, 0x0

    .line 106
    invoke-super {p0}, Lcom/kingroot/kinguser/wo;->run()V

    .line 108
    invoke-static {}, Lcom/kingroot/kinguser/aba;->access$000()Ljava/lang/String;

    move-result-object v2

    .line 109
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/kingroot/kinguser/aba;->access$100()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    invoke-static {}, Lcom/kingroot/kinguser/aba;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/kingroot/kinguser/zn;->H(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 117
    new-instance v3, Lcom/kingroot/kinguser/zn$a;

    invoke-direct {v3}, Lcom/kingroot/kinguser/zn$a;-><init>()V

    .line 118
    iput v5, v3, Lcom/kingroot/kinguser/zn$a;->WN:I

    .line 119
    iput v5, v3, Lcom/kingroot/kinguser/zn$a;->WO:I

    .line 120
    const/16 v1, 0x1ed

    iput v1, v3, Lcom/kingroot/kinguser/zn$a;->mode:I

    .line 121
    const-string v1, "u:object_r:system_file:s0"

    iput-object v1, v3, Lcom/kingroot/kinguser/zn$a;->WP:Ljava/lang/String;

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " zls"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/kingroot/kinguser/aba;->access$100()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v3}, Lcom/kingroot/kinguser/zn;->a(Ljava/lang/String;Ljava/lang/String;Lcom/kingroot/kinguser/zn$a;)I

    move-result v1

    or-int/2addr v1, v5

    .line 124
    if-ne v1, v6, :cond_2

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/kingroot/kinguser/aba;->access$100()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " zls"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/kingroot/kinguser/aba;->access$100()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v3}, Lcom/kingroot/kinguser/zn;->a(Ljava/lang/String;Ljava/lang/String;Lcom/kingroot/kinguser/zn$a;)I

    move-result v1

    .line 126
    if-ne v1, v6, :cond_2

    .line 139
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 140
    invoke-static {}, Lcom/kingroot/kinguser/aba;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lcom/kingroot/kinguser/aba;->d(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 142
    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method
