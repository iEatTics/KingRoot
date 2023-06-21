.class Lcom/kingroot/kinguser/ik;
.super Lcom/kingroot/kinguser/mg;
.source "SourceFile"


# instance fields
.field final synthetic rm:I

.field final synthetic rn:Ljava/lang/String;

.field final synthetic ro:Lcom/kingroot/kinguser/id;

.field final synthetic sc:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/id;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/kingroot/kinguser/ik;->ro:Lcom/kingroot/kinguser/id;

    iput p2, p0, Lcom/kingroot/kinguser/ik;->rm:I

    iput-object p3, p0, Lcom/kingroot/kinguser/ik;->sc:Ljava/lang/String;

    iput-object p4, p0, Lcom/kingroot/kinguser/ik;->rn:Ljava/lang/String;

    invoke-direct {p0}, Lcom/kingroot/kinguser/mg;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 207
    iget-object v0, p0, Lcom/kingroot/kinguser/ik;->ro:Lcom/kingroot/kinguser/id;

    iget v1, p0, Lcom/kingroot/kinguser/ik;->rm:I

    iget-object v2, p0, Lcom/kingroot/kinguser/ik;->sc:Ljava/lang/String;

    iget-object v3, p0, Lcom/kingroot/kinguser/ik;->rn:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/kingroot/kinguser/id;->b(Lcom/kingroot/kinguser/id;ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 210
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/kingroot/kinguser/ik;->sc:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :goto_0
    iget-object v1, p0, Lcom/kingroot/kinguser/ik;->ro:Lcom/kingroot/kinguser/id;

    const/4 v2, 0x3

    invoke-static {v1, v2, v0}, Lcom/kingroot/kinguser/id;->a(Lcom/kingroot/kinguser/id;II)V

    .line 214
    return-void

    .line 211
    :catch_0
    move-exception v1

    goto :goto_0
.end method
