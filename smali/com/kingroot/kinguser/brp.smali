.class public Lcom/kingroot/kinguser/brp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/brj;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/brp$a;
    }
.end annotation


# instance fields
.field final TAG:Ljava/lang/String;

.field bKl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/bsc;",
            ">;"
        }
    .end annotation
.end field

.field bKm:Lcom/kingroot/kinguser/brp$a;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/kingroot/kinguser/brp$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/bsc;",
            ">;",
            "Lcom/kingroot/kinguser/brp$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, "AdSharkCallBack"

    iput-object v0, p0, Lcom/kingroot/kinguser/brp;->TAG:Ljava/lang/String;

    .line 24
    iput-object p1, p0, Lcom/kingroot/kinguser/brp;->bKl:Ljava/util/List;

    .line 25
    iput-object p2, p0, Lcom/kingroot/kinguser/brp;->bKm:Lcom/kingroot/kinguser/brp$a;

    .line 26
    return-void
.end method


# virtual methods
.method public a(ILcom/qq/taf/jce/JceStruct;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 35
    if-eqz p1, :cond_0

    .line 36
    const-string v0, "AdSharkCallBack"

    const-string v1, "resp==null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget-object v0, p0, Lcom/kingroot/kinguser/brp;->bKm:Lcom/kingroot/kinguser/brp$a;

    iget-object v1, p0, Lcom/kingroot/kinguser/brp;->bKl:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lcom/kingroot/kinguser/brp$a;->m(Ljava/util/List;Z)V

    .line 48
    :goto_0
    return-void

    .line 40
    :cond_0
    if-nez p2, :cond_1

    .line 41
    const-string v0, "AdSharkCallBack"

    const-string v1, "resp==null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object v0, p0, Lcom/kingroot/kinguser/brp;->bKm:Lcom/kingroot/kinguser/brp$a;

    iget-object v1, p0, Lcom/kingroot/kinguser/brp;->bKl:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lcom/kingroot/kinguser/brp$a;->m(Ljava/util/List;Z)V

    goto :goto_0

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/brp;->bKm:Lcom/kingroot/kinguser/brp$a;

    iget-object v1, p0, Lcom/kingroot/kinguser/brp;->bKl:Ljava/util/List;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/kingroot/kinguser/brp$a;->m(Ljava/util/List;Z)V

    goto :goto_0
.end method
