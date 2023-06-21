.class public abstract Lcom/kingroot/kinguser/tu;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/tu$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private HE:Lcom/kingroot/kinguser/tu$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/tu;->HE:Lcom/kingroot/kinguser/tu$a;

    return-void
.end method


# virtual methods
.method protected abstract d(Landroid/os/IBinder;)Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TT;"
        }
    .end annotation
.end method

.method protected abstract jU()I
.end method

.method protected abstract jV()Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected abstract jW()Landroid/content/Intent;
.end method

.method public jX()Landroid/os/IInterface;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->hT()I

    move-result v1

    invoke-virtual {p0}, Lcom/kingroot/kinguser/tu;->jU()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 62
    invoke-virtual {p0}, Lcom/kingroot/kinguser/tu;->jV()Landroid/os/IInterface;

    move-result-object v0

    .line 83
    :cond_0
    :goto_0
    return-object v0

    .line 65
    :cond_1
    iget-object v1, p0, Lcom/kingroot/kinguser/tu;->HE:Lcom/kingroot/kinguser/tu$a;

    if-nez v1, :cond_2

    .line 66
    new-instance v1, Lcom/kingroot/kinguser/tu$a;

    invoke-direct {v1, v0}, Lcom/kingroot/kinguser/tu$a;-><init>(Lcom/kingroot/kinguser/tu$1;)V

    iput-object v1, p0, Lcom/kingroot/kinguser/tu;->HE:Lcom/kingroot/kinguser/tu$a;

    .line 70
    :cond_2
    iget-object v1, p0, Lcom/kingroot/kinguser/tu;->HE:Lcom/kingroot/kinguser/tu$a;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/tu$a;->jY()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 71
    iget-object v0, p0, Lcom/kingroot/kinguser/tu;->HE:Lcom/kingroot/kinguser/tu$a;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/tu$a;->jZ()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/tu;->d(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v0

    goto :goto_0

    .line 74
    :cond_3
    invoke-virtual {p0}, Lcom/kingroot/kinguser/tu;->jW()Landroid/content/Intent;

    move-result-object v1

    .line 75
    if-eqz v1, :cond_4

    .line 76
    iget-object v2, p0, Lcom/kingroot/kinguser/tu;->HE:Lcom/kingroot/kinguser/tu$a;

    invoke-virtual {v2, v1}, Lcom/kingroot/kinguser/tu$a;->c(Landroid/content/Intent;)V

    .line 79
    :cond_4
    iget-object v1, p0, Lcom/kingroot/kinguser/tu;->HE:Lcom/kingroot/kinguser/tu$a;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/tu$a;->jY()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    iget-object v0, p0, Lcom/kingroot/kinguser/tu;->HE:Lcom/kingroot/kinguser/tu$a;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/tu$a;->jZ()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/tu;->d(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v0

    goto :goto_0
.end method
