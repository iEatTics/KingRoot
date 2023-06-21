.class Lcom/kingroot/kinguser/bit$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingcore/uilib/ProgressWhell$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bit$a;-><init>(Lcom/kingroot/kinguser/bit;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic buJ:Lcom/kingroot/kinguser/bit;

.field final synthetic buK:Lcom/kingroot/kinguser/bit$a;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bit$a;Lcom/kingroot/kinguser/bit;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/kingroot/kinguser/bit$a$1;->buK:Lcom/kingroot/kinguser/bit$a;

    iput-object p2, p0, Lcom/kingroot/kinguser/bit$a$1;->buJ:Lcom/kingroot/kinguser/bit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(F)V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 162
    cmpl-float v0, p1, v1

    if-nez v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/kingroot/kinguser/bit$a$1;->buK:Lcom/kingroot/kinguser/bit$a;

    invoke-static {v0}, Lcom/kingroot/kinguser/bit$a;->a(Lcom/kingroot/kinguser/bit$a;)Lcom/kingcore/uilib/ProgressWhell;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/kingcore/uilib/ProgressWhell;->setProgress(F)V

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    cmpl-float v0, p1, v2

    if-nez v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/kingroot/kinguser/bit$a$1;->buK:Lcom/kingroot/kinguser/bit$a;

    invoke-static {v0}, Lcom/kingroot/kinguser/bit$a;->a(Lcom/kingroot/kinguser/bit$a;)Lcom/kingcore/uilib/ProgressWhell;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/kingcore/uilib/ProgressWhell;->setProgress(F)V

    goto :goto_0
.end method
