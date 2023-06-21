.class public final Lcom/king/uranus/F;
.super Lcom/king/uranus/cS;
.source "SourceFile"


# instance fields
.field public u:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/king/uranus/cS;-><init>()V

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/king/uranus/F;->u:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/mq;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-virtual {p1, v0, v0}, Lcom/kingroot/kinguser/mq;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/king/uranus/F;->u:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public a(Lcom/kingroot/kinguser/mr;)V
    .locals 2

    .prologue
    .line 16
    iget-object v0, p0, Lcom/king/uranus/F;->u:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 17
    iget-object v0, p0, Lcom/king/uranus/F;->u:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->f(Ljava/lang/String;I)V

    .line 19
    :cond_0
    return-void
.end method
