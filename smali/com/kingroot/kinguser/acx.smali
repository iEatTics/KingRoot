.class public abstract Lcom/kingroot/kinguser/acx;
.super Lcom/kingroot/kinguser/yl;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/yl;-><init>(Landroid/content/Context;)V

    .line 13
    return-void
.end method


# virtual methods
.method protected getDivider()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 30
    const-wide/32 v0, 0x7f0201c0

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/acx;->Y(J)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected oI()V
    .locals 2

    .prologue
    .line 25
    invoke-super {p0}, Lcom/kingroot/kinguser/yl;->oI()V

    .line 26
    iget-object v0, p0, Lcom/kingroot/kinguser/acx;->Vd:Landroid/widget/ListView;

    const v1, 0x7f0e006d

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundResource(I)V

    .line 27
    return-void
.end method

.method protected oJ()I
    .locals 1

    .prologue
    .line 35
    const v0, 0x7f0f000b

    return v0
.end method
