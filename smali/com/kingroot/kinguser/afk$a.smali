.class Lcom/kingroot/kinguser/afk$a;
.super Lcom/kingroot/kinguser/afk$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/afk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field public mCheckBox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/afk$f;-><init>(Landroid/view/View;)V

    .line 175
    const v0, 0x7f0f014c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/kingroot/kinguser/afk$a;->mCheckBox:Landroid/widget/CheckBox;

    .line 176
    iget-object v0, p0, Lcom/kingroot/kinguser/afk$a;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 177
    return-void
.end method


# virtual methods
.method a(Lcom/kingroot/kinguser/afk;Lcom/kingroot/kinguser/acr;)V
    .locals 2

    .prologue
    .line 181
    invoke-super {p0, p1, p2}, Lcom/kingroot/kinguser/afk$f;->a(Lcom/kingroot/kinguser/afk;Lcom/kingroot/kinguser/acr;)V

    .line 182
    iget-object v0, p0, Lcom/kingroot/kinguser/afk$a;->mCheckBox:Landroid/widget/CheckBox;

    iget-boolean v1, p1, Lcom/kingroot/kinguser/afk;->mChecked:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 183
    iget-object v0, p0, Lcom/kingroot/kinguser/afk$a;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 184
    return-void
.end method
