.class public abstract Lcom/kingroot/kinguser/yp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private VC:Landroid/view/View;

.field private VD:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    :try_start_0
    iput-object p1, p0, Lcom/kingroot/kinguser/yp;->mContext:Landroid/content/Context;

    .line 37
    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    iput-object p2, p0, Lcom/kingroot/kinguser/yp;->mTitle:Ljava/lang/String;

    .line 39
    invoke-virtual {p0}, Lcom/kingroot/kinguser/yp;->oY()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/yp;->VC:Landroid/view/View;

    .line 40
    iget-object v0, p0, Lcom/kingroot/kinguser/yp;->VC:Landroid/view/View;

    if-nez v0, :cond_1

    .line 41
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 46
    :catch_0
    move-exception v0

    .line 49
    :goto_0
    return-void

    .line 43
    :cond_1
    invoke-virtual {p0}, Lcom/kingroot/kinguser/yp;->oZ()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/yp;->VD:Landroid/view/ViewGroup;

    .line 44
    invoke-virtual {p0}, Lcom/kingroot/kinguser/yp;->pa()V

    .line 45
    invoke-virtual {p0}, Lcom/kingroot/kinguser/yp;->oI()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/kingroot/kinguser/yp;->VD:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 116
    :goto_0
    return-void

    .line 111
    :cond_0
    if-nez p2, :cond_1

    .line 112
    iget-object v0, p0, Lcom/kingroot/kinguser/yp;->VD:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/yp;->VD:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public getContainer()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/kingroot/kinguser/yp;->VD:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/kingroot/kinguser/yp;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/kingroot/kinguser/yp;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/kingroot/kinguser/yp;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getWholeView()Landroid/view/View;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/kingroot/kinguser/yp;->VC:Landroid/view/View;

    return-object v0
.end method

.method protected oI()V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method protected abstract oY()Landroid/view/View;
.end method

.method protected abstract oZ()Landroid/view/ViewGroup;
.end method

.method protected abstract pa()V
.end method
