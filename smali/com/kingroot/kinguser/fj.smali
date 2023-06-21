.class public Lcom/kingroot/kinguser/fj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ag:Ljava/lang/String;

.field public final ak:Ljava/lang/String;

.field public final pT:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 493
    iput-object p1, p0, Lcom/kingroot/kinguser/fj;->ag:Ljava/lang/String;

    .line 494
    iput-object p2, p0, Lcom/kingroot/kinguser/fj;->ak:Ljava/lang/String;

    .line 495
    iput-wide p3, p0, Lcom/kingroot/kinguser/fj;->pT:J

    .line 496
    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/kingroot/kinguser/fj;->ag:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/fj;->ag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/fj;->ak:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/fj;->ak:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
