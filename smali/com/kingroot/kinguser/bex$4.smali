.class Lcom/kingroot/kinguser/bex$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/aic$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bex;->r(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bca:Ljava/util/List;

.field final synthetic bcb:Lcom/kingroot/kinguser/zi;

.field final synthetic blL:Lcom/kingroot/kinguser/bex;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bex;Ljava/util/List;Lcom/kingroot/kinguser/zi;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/kingroot/kinguser/bex$4;->blL:Lcom/kingroot/kinguser/bex;

    iput-object p2, p0, Lcom/kingroot/kinguser/bex$4;->bca:Ljava/util/List;

    iput-object p3, p0, Lcom/kingroot/kinguser/bex$4;->bcb:Lcom/kingroot/kinguser/zi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dv(I)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 131
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/bex$4;->bca:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    move v0, v1

    .line 141
    :goto_0
    return v0

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bex$4;->bca:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 137
    iget-object v2, p0, Lcom/kingroot/kinguser/bex$4;->bcb:Lcom/kingroot/kinguser/zi;

    const v3, 0x7f0704e9

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 138
    invoke-static {}, Lcom/kingroot/kinguser/bfw;->aaS()Lcom/kingroot/kinguser/bfw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bfw;->aaV()Z

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 141
    goto :goto_0
.end method
