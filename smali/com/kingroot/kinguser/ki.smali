.class public Lcom/kingroot/kinguser/ki;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/kingroot/kinguser/ir;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private dN:Ljava/lang/String;

.field private se:Lcom/kingroot/kinguser/ir;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private tO:Landroid/content/Context;

.field private tP:Lcom/kingroot/kinguser/ip;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/ip",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final tQ:Ljava/lang/Object;

.field private tR:Lcom/kingroot/kinguser/is;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/is",
            "<TT;>;"
        }
    .end annotation
.end field

.field tS:Lcom/kingroot/kinguser/is;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/is",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/kingroot/kinguser/ir;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/ki;->tQ:Ljava/lang/Object;

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/ki;->tR:Lcom/kingroot/kinguser/is;

    .line 79
    new-instance v0, Lcom/kingroot/kinguser/io;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/io;-><init>(Lcom/kingroot/kinguser/ki;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ki;->tS:Lcom/kingroot/kinguser/is;

    .line 28
    iput-object p1, p0, Lcom/kingroot/kinguser/ki;->tO:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/kingroot/kinguser/ki;->se:Lcom/kingroot/kinguser/ir;

    .line 30
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/ki;)Lcom/kingroot/kinguser/is;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/kingroot/kinguser/ki;->tR:Lcom/kingroot/kinguser/is;

    return-object v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/ki;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/kingroot/kinguser/ki;->cW()V

    return-void
.end method

.method private cW()V
    .locals 0

    .prologue
    .line 260
    invoke-direct {p0}, Lcom/kingroot/kinguser/ki;->cX()V

    .line 261
    return-void
.end method

.method private cX()V
    .locals 4

    .prologue
    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/kingroot/kinguser/ki;->se:Lcom/kingroot/kinguser/ir;

    iget-object v1, v1, Lcom/kingroot/kinguser/ir;->sq:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/ki;->se:Lcom/kingroot/kinguser/ir;

    iget-object v1, v1, Lcom/kingroot/kinguser/ir;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 265
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 266
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 267
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 268
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 271
    :cond_0
    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 273
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/is;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kingroot/kinguser/is",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 51
    iput-object p1, p0, Lcom/kingroot/kinguser/ki;->tR:Lcom/kingroot/kinguser/is;

    .line 52
    return-void
.end method

.method public cV()V
    .locals 5

    .prologue
    .line 135
    iget-object v0, p0, Lcom/kingroot/kinguser/ki;->tS:Lcom/kingroot/kinguser/is;

    iget-object v1, p0, Lcom/kingroot/kinguser/ki;->se:Lcom/kingroot/kinguser/ir;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/is;->a(Lcom/kingroot/kinguser/ir;)V

    .line 137
    iget-object v1, p0, Lcom/kingroot/kinguser/ki;->tQ:Ljava/lang/Object;

    monitor-enter v1

    .line 138
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ki;->tP:Lcom/kingroot/kinguser/ip;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/kingroot/kinguser/ki;->tP:Lcom/kingroot/kinguser/ip;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ip;->ce()V

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/ki;->tP:Lcom/kingroot/kinguser/ip;

    .line 142
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/kingroot/kinguser/ki;->dN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/ki;->se:Lcom/kingroot/kinguser/ir;

    iget-object v1, v1, Lcom/kingroot/kinguser/ir;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 146
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 148
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 151
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 152
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 153
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 154
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 158
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 162
    :goto_0
    iget-object v1, p0, Lcom/kingroot/kinguser/ki;->tQ:Ljava/lang/Object;

    monitor-enter v1

    .line 163
    :try_start_2
    new-instance v2, Lcom/kingroot/kinguser/ip;

    iget-object v3, p0, Lcom/kingroot/kinguser/ki;->tO:Landroid/content/Context;

    iget-object v4, p0, Lcom/kingroot/kinguser/ki;->se:Lcom/kingroot/kinguser/ir;

    invoke-direct {v2, v3, v4, v0}, Lcom/kingroot/kinguser/ip;-><init>(Landroid/content/Context;Lcom/kingroot/kinguser/ir;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/kingroot/kinguser/ki;->tP:Lcom/kingroot/kinguser/ip;

    .line 164
    iget-object v0, p0, Lcom/kingroot/kinguser/ki;->tP:Lcom/kingroot/kinguser/ip;

    iget-object v2, p0, Lcom/kingroot/kinguser/ki;->tS:Lcom/kingroot/kinguser/is;

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/ip;->a(Lcom/kingroot/kinguser/is;)V

    .line 166
    iget-object v0, p0, Lcom/kingroot/kinguser/ki;->se:Lcom/kingroot/kinguser/ir;

    iget-object v2, p0, Lcom/kingroot/kinguser/ki;->tP:Lcom/kingroot/kinguser/ip;

    iput-object v2, v0, Lcom/kingroot/kinguser/ir;->sv:Lcom/kingroot/kinguser/mg;

    .line 167
    iget-object v0, p0, Lcom/kingroot/kinguser/ki;->se:Lcom/kingroot/kinguser/ir;

    iget-object v2, p0, Lcom/kingroot/kinguser/ki;->dN:Ljava/lang/String;

    iput-object v2, v0, Lcom/kingroot/kinguser/ir;->sq:Ljava/lang/String;

    .line 169
    iget-object v0, p0, Lcom/kingroot/kinguser/ki;->tP:Lcom/kingroot/kinguser/ip;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/ip;->n(Z)Z

    .line 170
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 171
    return-void

    .line 142
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 170
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 159
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public r(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 38
    iput-object p1, p0, Lcom/kingroot/kinguser/ki;->dN:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/kingroot/kinguser/ki;->dN:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 41
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 43
    :cond_0
    return-void
.end method
