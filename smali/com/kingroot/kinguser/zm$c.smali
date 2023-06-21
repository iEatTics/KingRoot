.class public Lcom/kingroot/kinguser/zm$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/zm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private WF:Ljava/lang/String;

.field private WL:I

.field private WM:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 378
    iput-object p1, p0, Lcom/kingroot/kinguser/zm$c;->WF:Ljava/lang/String;

    .line 379
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/zm$c;->WL:I

    .line 380
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingroot/kinguser/zm$c;->WM:J

    .line 381
    return-void
.end method

.method static synthetic b(Lcom/kingroot/kinguser/zm$c;)J
    .locals 2

    .prologue
    .line 371
    iget-wide v0, p0, Lcom/kingroot/kinguser/zm$c;->WM:J

    return-wide v0
.end method


# virtual methods
.method public Z(J)V
    .locals 1

    .prologue
    .line 388
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->hZ()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/zm$c;->WL:I

    .line 389
    iput-wide p1, p0, Lcom/kingroot/kinguser/zm$c;->WM:J

    .line 390
    return-void
.end method

.method public dA(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 413
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 414
    const-string v0, "|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 416
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/kingroot/kinguser/zm$c;->WL:I

    .line 417
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/zm$c;->WM:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    :cond_0
    :goto_0
    return-void

    .line 418
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getAbsolutePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/kingroot/kinguser/zm$c;->WF:Ljava/lang/String;

    return-object v0
.end method

.method public pA()Ljava/lang/String;
    .locals 4

    .prologue
    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/kingroot/kinguser/zm$c;->WL:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/kingroot/kinguser/zm$c;->WM:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public pz()Z
    .locals 2

    .prologue
    .line 405
    iget v0, p0, Lcom/kingroot/kinguser/zm$c;->WL:I

    invoke-static {}, Lcom/kingroot/common/app/KApplication;->hZ()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
