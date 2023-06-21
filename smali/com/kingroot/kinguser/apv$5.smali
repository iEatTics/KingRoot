.class Lcom/kingroot/kinguser/apv$5;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/apv;->a(Ljava/lang/String;Lcom/kingroot/kinguser/apv$b;Lcom/kingroot/kinguser/apv$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aJC:Lcom/kingroot/kinguser/apv;

.field final synthetic aJF:Lcom/kingroot/kinguser/apv$b;

.field final synthetic aJG:Lcom/kingroot/kinguser/apv$a;

.field final synthetic yz:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/apv;Lcom/kingroot/kinguser/apv$b;Ljava/lang/String;Lcom/kingroot/kinguser/apv$a;)V
    .locals 0

    .prologue
    .line 339
    iput-object p1, p0, Lcom/kingroot/kinguser/apv$5;->aJC:Lcom/kingroot/kinguser/apv;

    iput-object p2, p0, Lcom/kingroot/kinguser/apv$5;->aJF:Lcom/kingroot/kinguser/apv$b;

    iput-object p3, p0, Lcom/kingroot/kinguser/apv$5;->yz:Ljava/lang/String;

    iput-object p4, p0, Lcom/kingroot/kinguser/apv$5;->aJG:Lcom/kingroot/kinguser/apv$a;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 342
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 344
    const/4 v0, 0x1

    .line 345
    iget-object v2, p0, Lcom/kingroot/kinguser/apv$5;->aJF:Lcom/kingroot/kinguser/apv$b;

    if-eqz v2, :cond_0

    .line 346
    iget-object v2, p0, Lcom/kingroot/kinguser/apv$5;->aJC:Lcom/kingroot/kinguser/apv;

    iget-object v3, p0, Lcom/kingroot/kinguser/apv$5;->yz:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/apv;->ic(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 347
    if-eqz v2, :cond_0

    .line 349
    iget-object v0, p0, Lcom/kingroot/kinguser/apv$5;->aJF:Lcom/kingroot/kinguser/apv$b;

    iget-object v3, p0, Lcom/kingroot/kinguser/apv$5;->yz:Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Lcom/kingroot/kinguser/apv$b;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    move v0, v1

    .line 353
    :cond_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/kingroot/kinguser/apv$5;->aJC:Lcom/kingroot/kinguser/apv;

    iget-object v4, p0, Lcom/kingroot/kinguser/apv$5;->yz:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/kingroot/kinguser/apv;->a(Lcom/kingroot/kinguser/apv;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 354
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 356
    iget-object v0, p0, Lcom/kingroot/kinguser/apv$5;->aJG:Lcom/kingroot/kinguser/apv$a;

    if-eqz v0, :cond_1

    .line 357
    iget-object v0, p0, Lcom/kingroot/kinguser/apv$5;->aJG:Lcom/kingroot/kinguser/apv$a;

    iget-object v2, p0, Lcom/kingroot/kinguser/apv$5;->yz:Ljava/lang/String;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/kingroot/kinguser/apv$5;->aJC:Lcom/kingroot/kinguser/apv;

    iget-object v5, p0, Lcom/kingroot/kinguser/apv$5;->yz:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/kingroot/kinguser/apv;->a(Lcom/kingroot/kinguser/apv;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2, v3}, Lcom/kingroot/kinguser/apv$a;->j(Ljava/lang/String;Ljava/io/File;)V

    .line 361
    :cond_1
    :goto_0
    if-nez v1, :cond_2

    .line 376
    :goto_1
    return-void

    .line 365
    :cond_2
    new-instance v0, Lcom/kingroot/kinguser/apa$b;

    invoke-direct {v0}, Lcom/kingroot/kinguser/apa$b;-><init>()V

    .line 366
    iget-object v1, p0, Lcom/kingroot/kinguser/apv$5;->yz:Ljava/lang/String;

    iput-object v1, v0, Lcom/kingroot/kinguser/apa$b;->url:Ljava/lang/String;

    .line 367
    iget-object v1, p0, Lcom/kingroot/kinguser/apv$5;->aJC:Lcom/kingroot/kinguser/apv;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/apv;->LP()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kingroot/kinguser/apa$b;->aHa:Ljava/lang/String;

    .line 368
    iget-object v1, p0, Lcom/kingroot/kinguser/apv$5;->aJC:Lcom/kingroot/kinguser/apv;

    iget-object v2, p0, Lcom/kingroot/kinguser/apv$5;->yz:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/apv;->b(Lcom/kingroot/kinguser/apv;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kingroot/kinguser/apa$b;->aGZ:Ljava/lang/String;

    .line 369
    iget-object v1, p0, Lcom/kingroot/kinguser/apv$5;->aJF:Lcom/kingroot/kinguser/apv$b;

    if-eqz v1, :cond_3

    .line 370
    invoke-static {}, Lcom/kingroot/kinguser/apv;->kO()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/apv$5;->yz:Ljava/lang/String;

    iget-object v3, p0, Lcom/kingroot/kinguser/apv$5;->aJF:Lcom/kingroot/kinguser/apv$b;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    :cond_3
    iget-object v1, p0, Lcom/kingroot/kinguser/apv$5;->aJG:Lcom/kingroot/kinguser/apv$a;

    if-eqz v1, :cond_4

    .line 373
    invoke-static {}, Lcom/kingroot/kinguser/apv;->kP()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/apv$5;->yz:Ljava/lang/String;

    iget-object v3, p0, Lcom/kingroot/kinguser/apv$5;->aJG:Lcom/kingroot/kinguser/apv$a;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    :cond_4
    invoke-static {}, Lcom/kingroot/kinguser/aos;->Ku()Lcom/kingroot/kinguser/aos;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/apv$5;->aJC:Lcom/kingroot/kinguser/apv;

    invoke-static {v2}, Lcom/kingroot/kinguser/apv;->a(Lcom/kingroot/kinguser/apv;)Lcom/kingroot/kinguser/apa$a;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/kingroot/kinguser/aos;->a(Lcom/kingroot/kinguser/apa$b;Lcom/kingroot/kinguser/apa$a;)Lcom/kingroot/kinguser/bom;

    goto :goto_1

    :cond_5
    move v1, v0

    goto :goto_0
.end method
