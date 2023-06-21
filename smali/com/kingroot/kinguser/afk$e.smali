.class Lcom/kingroot/kinguser/afk$e;
.super Lcom/kingroot/kinguser/afk$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/afk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation


# instance fields
.field public ahO:Landroid/widget/Button;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 214
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/afk$f;-><init>(Landroid/view/View;)V

    .line 215
    const v0, 0x7f0f00f4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kingroot/kinguser/afk$e;->ahO:Landroid/widget/Button;

    .line 216
    iget-object v0, p0, Lcom/kingroot/kinguser/afk$e;->ahO:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    return-void
.end method


# virtual methods
.method a(Lcom/kingroot/kinguser/afk;Lcom/kingroot/kinguser/acr;)V
    .locals 1

    .prologue
    .line 221
    invoke-super {p0, p1, p2}, Lcom/kingroot/kinguser/afk$f;->a(Lcom/kingroot/kinguser/afk;Lcom/kingroot/kinguser/acr;)V

    .line 222
    iget-object v0, p0, Lcom/kingroot/kinguser/afk$e;->ahO:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 223
    return-void
.end method
