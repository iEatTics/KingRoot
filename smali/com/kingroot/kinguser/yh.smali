.class public Lcom/kingroot/kinguser/yh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/yf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/kingroot/kinguser/yf",
        "<",
        "Lcom/kingroot/kinguser/yi;",
        ">;"
    }
.end annotation


# instance fields
.field private volatile UW:Lcom/kingroot/kinguser/yi;

.field private UX:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/yg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/kingroot/kinguser/ye;

    invoke-direct {v0}, Lcom/kingroot/kinguser/ye;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/yh;->UW:Lcom/kingroot/kinguser/yi;

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/yg;)V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/kingroot/kinguser/yh;->UX:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/yh;->UX:Ljava/util/ArrayList;

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/yh;->UX:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 49
    iget-object v0, p0, Lcom/kingroot/kinguser/yh;->UX:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    :cond_1
    return-void
.end method

.method public b(Lcom/kingroot/kinguser/yg;)V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/kingroot/kinguser/yh;->UX:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/yh;->UX:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/kingroot/kinguser/yh;->UX:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getColor(I)I
    .locals 5

    .prologue
    .line 63
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    .line 64
    invoke-virtual {v1, p1}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v0

    .line 66
    invoke-virtual {v1, p1}, Lcom/kingroot/kinguser/zi;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v2

    .line 68
    const-string v3, "color"

    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/kingroot/kinguser/zi;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 72
    :try_start_0
    iget-object v2, p0, Lcom/kingroot/kinguser/yh;->UW:Lcom/kingroot/kinguser/yi;

    invoke-interface {v2, v1}, Lcom/kingroot/kinguser/yi;->getColor(I)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 78
    :goto_0
    return v0

    .line 73
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 84
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    .line 85
    invoke-virtual {v1, p1}, Lcom/kingroot/kinguser/zi;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 86
    invoke-virtual {v1, p1}, Lcom/kingroot/kinguser/zi;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v2

    .line 88
    const-string v3, "drawable"

    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/kingroot/kinguser/zi;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 90
    const/4 v1, 0x0

    .line 92
    :try_start_0
    iget-object v3, p0, Lcom/kingroot/kinguser/yh;->UW:Lcom/kingroot/kinguser/yi;

    invoke-interface {v3, v2}, Lcom/kingroot/kinguser/yi;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 96
    if-nez v1, :cond_2

    .line 101
    :cond_0
    :goto_0
    return-object v0

    .line 93
    :catch_0
    move-exception v2

    .line 96
    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    if-nez v1, :cond_1

    .line 97
    :cond_1
    throw v0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method
