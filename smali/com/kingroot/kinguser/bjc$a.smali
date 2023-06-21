.class final Lcom/kingroot/kinguser/bjc$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bjc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field public age:Landroid/widget/TextView;

.field public ahP:Landroid/widget/ImageView;

.field public bgq:Landroid/widget/TextView;

.field private bvE:Z

.field public bvG:Landroid/widget/TextView;

.field public bvH:Landroid/widget/CompoundButton;

.field public bvI:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    const v0, 0x7f0f0148

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/bjc$a;->ahP:Landroid/widget/ImageView;

    .line 161
    const v0, 0x7f0f0213

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/bjc$a;->bvG:Landroid/widget/TextView;

    .line 162
    const v0, 0x7f0f00d1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/bjc$a;->age:Landroid/widget/TextView;

    .line 163
    const v0, 0x7f0f0214

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/bjc$a;->bgq:Landroid/widget/TextView;

    .line 164
    const v0, 0x7f0f014c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/kingroot/kinguser/bjc$a;->bvH:Landroid/widget/CompoundButton;

    .line 165
    const v0, 0x7f0f0230

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/bjc$a;->bvI:Landroid/widget/TextView;

    .line 167
    iget-object v0, p0, Lcom/kingroot/kinguser/bjc$a;->bvI:Landroid/widget/TextView;

    const v1, 0x7f07008d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 169
    iput-boolean p2, p0, Lcom/kingroot/kinguser/bjc$a;->bvE:Z

    .line 170
    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/bji;Lcom/kingroot/kinguser/acr;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kingroot/kinguser/bji",
            "<",
            "Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;",
            ">;",
            "Lcom/kingroot/kinguser/acr;",
            ")V"
        }
    .end annotation

    .prologue
    const/16 v3, 0x8

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 174
    invoke-virtual {p1}, Lcom/kingroot/kinguser/bji;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;

    .line 175
    if-eqz p2, :cond_0

    .line 176
    invoke-virtual {v0}, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/kingroot/kinguser/bjc$a;->ahP:Landroid/widget/ImageView;

    const v5, 0x7f020110

    invoke-virtual {p2, v1, v4, v5}, Lcom/kingroot/kinguser/acr;->a(Ljava/lang/String;Landroid/widget/ImageView;I)V

    .line 178
    :cond_0
    iget-object v1, p0, Lcom/kingroot/kinguser/bjc$a;->age:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v1, p0, Lcom/kingroot/kinguser/bjc$a;->bvH:Landroid/widget/CompoundButton;

    invoke-virtual {p1}, Lcom/kingroot/kinguser/bji;->isChecked()Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 180
    iget-object v1, p0, Lcom/kingroot/kinguser/bjc$a;->bvH:Landroid/widget/CompoundButton;

    invoke-virtual {v1, p1}, Landroid/widget/CompoundButton;->setTag(Ljava/lang/Object;)V

    .line 182
    iget-boolean v1, p0, Lcom/kingroot/kinguser/bjc$a;->bvE:Z

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/kingroot/kinguser/bji;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 183
    :cond_1
    iget-object v1, p0, Lcom/kingroot/kinguser/bjc$a;->bgq:Landroid/widget/TextView;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v4

    const v5, 0x7f090001

    .line 184
    invoke-virtual {v0}, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;->adz()I

    move-result v6

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;->adz()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    .line 183
    invoke-virtual {v4, v5, v6, v7}, Lcom/kingroot/kinguser/zi;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    :goto_0
    iget-object v4, p0, Lcom/kingroot/kinguser/bjc$a;->bvI:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/kingroot/kinguser/bjc$a;->bvE:Z

    if-nez v1, :cond_6

    .line 191
    invoke-virtual {v0}, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;->vk()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;->vl()Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_2
    move v1, v2

    .line 190
    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 195
    invoke-virtual {v0}, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;->vk()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 196
    iget-object v1, p0, Lcom/kingroot/kinguser/bjc$a;->bvI:Landroid/widget/TextView;

    const v4, 0x7f07008d

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 199
    :cond_3
    invoke-virtual {v0}, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;->vl()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 200
    iget-object v1, p0, Lcom/kingroot/kinguser/bjc$a;->bvI:Landroid/widget/TextView;

    const v4, 0x7f07008f

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 202
    :cond_4
    iget-object v1, p0, Lcom/kingroot/kinguser/bjc$a;->bvG:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 203
    return-void

    .line 186
    :cond_5
    iget-object v1, p0, Lcom/kingroot/kinguser/bjc$a;->bgq:Landroid/widget/TextView;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v4

    const/high16 v5, 0x7f090000

    .line 187
    invoke-virtual {v0}, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;->adz()I

    move-result v6

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;->adz()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    .line 186
    invoke-virtual {v4, v5, v6, v7}, Lcom/kingroot/kinguser/zi;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_6
    move v1, v3

    .line 191
    goto :goto_1

    :cond_7
    move v2, v3

    .line 202
    goto :goto_2
.end method
