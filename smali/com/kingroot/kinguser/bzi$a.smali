.class Lcom/kingroot/kinguser/bzi$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bzi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/kingroot/kinguser/bzi$a;",
        ">;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private bVC:Lcom/kingroot/kinguser/cgd$c;

.field final synthetic bVD:Lcom/kingroot/kinguser/bzi;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/bzi;ILjava/lang/Runnable;Ljava/lang/String;JZLjava/lang/Object;)V
    .locals 5

    .prologue
    .line 826
    iput-object p1, p0, Lcom/kingroot/kinguser/bzi$a;->bVD:Lcom/kingroot/kinguser/bzi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 823
    new-instance v0, Lcom/kingroot/kinguser/cgd$c;

    invoke-direct {v0}, Lcom/kingroot/kinguser/cgd$c;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bzi$a;->bVC:Lcom/kingroot/kinguser/cgd$c;

    .line 829
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 830
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p4

    .line 833
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bzi$a;->bVC:Lcom/kingroot/kinguser/cgd$c;

    const/4 v1, 0x1

    iput v1, v0, Lcom/kingroot/kinguser/cgd$c;->ceb:I

    .line 834
    iget-object v0, p0, Lcom/kingroot/kinguser/bzi$a;->bVC:Lcom/kingroot/kinguser/cgd$c;

    iput p2, v0, Lcom/kingroot/kinguser/cgd$c;->priority:I

    .line 835
    iget-object v0, p0, Lcom/kingroot/kinguser/bzi$a;->bVC:Lcom/kingroot/kinguser/cgd$c;

    iput-object p4, v0, Lcom/kingroot/kinguser/cgd$c;->name:Ljava/lang/String;

    .line 836
    iget-object v0, p0, Lcom/kingroot/kinguser/bzi$a;->bVC:Lcom/kingroot/kinguser/cgd$c;

    iput-wide p5, v0, Lcom/kingroot/kinguser/cgd$c;->jY:J

    .line 837
    iget-object v0, p0, Lcom/kingroot/kinguser/bzi$a;->bVC:Lcom/kingroot/kinguser/cgd$c;

    iput-object p3, v0, Lcom/kingroot/kinguser/cgd$c;->ceg:Ljava/lang/Runnable;

    .line 838
    iget-object v0, p0, Lcom/kingroot/kinguser/bzi$a;->bVC:Lcom/kingroot/kinguser/cgd$c;

    iput-boolean p7, v0, Lcom/kingroot/kinguser/cgd$c;->cef:Z

    .line 839
    iget-object v0, p0, Lcom/kingroot/kinguser/bzi$a;->bVC:Lcom/kingroot/kinguser/cgd$c;

    iput-object p8, v0, Lcom/kingroot/kinguser/cgd$c;->ceh:Ljava/lang/Object;

    .line 840
    iget-object v0, p0, Lcom/kingroot/kinguser/bzi$a;->bVC:Lcom/kingroot/kinguser/cgd$c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/kingroot/kinguser/cgd$c;->cec:J

    .line 841
    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/bzi$a;)I
    .locals 4

    .prologue
    .line 860
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/kingroot/kinguser/bzi$a;->bVC:Lcom/kingroot/kinguser/cgd$c;

    iget-wide v2, v2, Lcom/kingroot/kinguser/cgd$c;->cec:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 861
    const-wide/16 v2, 0xc8

    div-long/2addr v0, v2

    long-to-int v1, v0

    .line 862
    iget-object v0, p0, Lcom/kingroot/kinguser/bzi$a;->bVC:Lcom/kingroot/kinguser/cgd$c;

    iget v0, v0, Lcom/kingroot/kinguser/cgd$c;->priority:I

    .line 863
    if-lez v1, :cond_0

    .line 864
    add-int/2addr v0, v1

    .line 868
    :cond_0
    iget-object v1, p1, Lcom/kingroot/kinguser/bzi$a;->bVC:Lcom/kingroot/kinguser/cgd$c;

    iget v1, v1, Lcom/kingroot/kinguser/cgd$c;->priority:I

    sub-int v0, v1, v0

    return v0
.end method

.method public aki()Lcom/kingroot/kinguser/cgd$c;
    .locals 1

    .prologue
    .line 844
    iget-object v0, p0, Lcom/kingroot/kinguser/bzi$a;->bVC:Lcom/kingroot/kinguser/cgd$c;

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 821
    check-cast p1, Lcom/kingroot/kinguser/bzi$a;

    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/bzi$a;->a(Lcom/kingroot/kinguser/bzi$a;)I

    move-result v0

    return v0
.end method

.method public run()V
    .locals 1

    .prologue
    .line 849
    iget-object v0, p0, Lcom/kingroot/kinguser/bzi$a;->bVC:Lcom/kingroot/kinguser/cgd$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/bzi$a;->bVC:Lcom/kingroot/kinguser/cgd$c;

    iget-object v0, v0, Lcom/kingroot/kinguser/cgd$c;->ceg:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 850
    iget-object v0, p0, Lcom/kingroot/kinguser/bzi$a;->bVC:Lcom/kingroot/kinguser/cgd$c;

    iget-object v0, v0, Lcom/kingroot/kinguser/cgd$c;->ceg:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 852
    :cond_0
    return-void
.end method
