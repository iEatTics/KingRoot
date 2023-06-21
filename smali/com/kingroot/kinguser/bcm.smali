.class public final Lcom/kingroot/kinguser/bcm;
.super Lcom/kingroot/kinguser/bcf;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bcf;-><init>(Landroid/content/Context;)V

    .line 13
    return-void
.end method


# virtual methods
.method protected Xl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    const v0, 0x7f07029d

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bcm;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected Xm()Landroid/view/View;
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    return-object v0
.end method
