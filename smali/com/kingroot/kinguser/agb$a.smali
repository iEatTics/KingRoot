.class public Lcom/kingroot/kinguser/agb$a;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/agb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field private final ajH:Landroid/widget/ImageView;

.field private final ajI:Landroid/widget/TextView;

.field private final ajL:Landroid/view/View;

.field ajR:Lcom/kingroot/common/uilib/QSwitchCheckBox;

.field final synthetic ajS:Lcom/kingroot/kinguser/agb;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/agb;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 229
    iput-object p1, p0, Lcom/kingroot/kinguser/agb$a;->ajS:Lcom/kingroot/kinguser/agb;

    .line 230
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 231
    const v0, 0x7f0f0209

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/agb$a;->ajH:Landroid/widget/ImageView;

    .line 232
    const v0, 0x7f0f020a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/agb$a;->ajI:Landroid/widget/TextView;

    .line 233
    const v0, 0x7f0f014c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/uilib/QSwitchCheckBox;

    iput-object v0, p0, Lcom/kingroot/kinguser/agb$a;->ajR:Lcom/kingroot/common/uilib/QSwitchCheckBox;

    .line 234
    const v0, 0x7f0f00d4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/agb$a;->ajL:Landroid/view/View;

    .line 235
    return-void
.end method


# virtual methods
.method a(Lcom/kingroot/kinguser/agb$e;)V
    .locals 2

    .prologue
    .line 238
    check-cast p1, Lcom/kingroot/kinguser/agb$b;

    .line 245
    iget-object v0, p0, Lcom/kingroot/kinguser/agb$a;->ajH:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/kingroot/kinguser/agb$b;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 246
    iget-object v0, p0, Lcom/kingroot/kinguser/agb$a;->ajI:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/kingroot/kinguser/agb$b;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    iget-object v0, p0, Lcom/kingroot/kinguser/agb$a;->ajR:Lcom/kingroot/common/uilib/QSwitchCheckBox;

    iget-boolean v1, p1, Lcom/kingroot/kinguser/agb$b;->ajU:Z

    invoke-virtual {v0, v1}, Lcom/kingroot/common/uilib/QSwitchCheckBox;->setChecked(Z)V

    .line 248
    iget-object v0, p0, Lcom/kingroot/kinguser/agb$a;->ajR:Lcom/kingroot/common/uilib/QSwitchCheckBox;

    new-instance v1, Lcom/kingroot/kinguser/agb$a$1;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/agb$a$1;-><init>(Lcom/kingroot/kinguser/agb$a;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/common/uilib/QSwitchCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 259
    return-void
.end method
