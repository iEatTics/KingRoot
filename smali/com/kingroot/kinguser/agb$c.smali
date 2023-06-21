.class public Lcom/kingroot/kinguser/agb$c;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/agb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public ajG:Landroid/view/View;

.field public ajH:Landroid/widget/ImageView;

.field public ajI:Landroid/widget/TextView;

.field public ajJ:Landroid/widget/TextView;

.field private ajL:Landroid/view/View;

.field final synthetic ajS:Lcom/kingroot/kinguser/agb;

.field private ajV:Landroid/widget/ImageView;

.field public ajW:Landroid/widget/LinearLayout;

.field public ajX:Landroid/view/View;

.field public ajY:Landroid/view/View;

.field public ajZ:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/agb;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 112
    iput-object p1, p0, Lcom/kingroot/kinguser/agb$c;->ajS:Lcom/kingroot/kinguser/agb;

    .line 113
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 114
    const v0, 0x7f0f0005

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/agb$c;->ajG:Landroid/view/View;

    .line 115
    const v0, 0x7f0f0209

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/agb$c;->ajH:Landroid/widget/ImageView;

    .line 116
    const v0, 0x7f0f020a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/agb$c;->ajI:Landroid/widget/TextView;

    .line 117
    const v0, 0x7f0f020b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/agb$c;->ajJ:Landroid/widget/TextView;

    .line 118
    iget-object v0, p0, Lcom/kingroot/kinguser/agb$c;->itemView:Landroid/view/View;

    const v1, 0x7f0f020c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/agb$c;->ajV:Landroid/widget/ImageView;

    .line 119
    const v0, 0x7f0f020d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/kingroot/kinguser/agb$c;->ajW:Landroid/widget/LinearLayout;

    .line 120
    iget-object v0, p0, Lcom/kingroot/kinguser/agb$c;->ajW:Landroid/widget/LinearLayout;

    const v1, 0x7f0f0177

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/agb$c;->ajX:Landroid/view/View;

    .line 121
    iget-object v0, p0, Lcom/kingroot/kinguser/agb$c;->ajW:Landroid/widget/LinearLayout;

    const v1, 0x7f0f020f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/agb$c;->ajY:Landroid/view/View;

    .line 122
    iget-object v0, p0, Lcom/kingroot/kinguser/agb$c;->ajW:Landroid/widget/LinearLayout;

    const v1, 0x7f0f0211

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/agb$c;->ajZ:Landroid/view/View;

    .line 123
    iget-object v0, p0, Lcom/kingroot/kinguser/agb$c;->itemView:Landroid/view/View;

    const v1, 0x7f0f00d4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/agb$c;->ajL:Landroid/view/View;

    .line 124
    return-void
.end method

.method private f(Landroid/view/View;F)V
    .locals 4

    .prologue
    .line 214
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 215
    invoke-virtual {v0, p2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->rotation(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const-wide/16 v2, 0x12c

    .line 216
    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 217
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 218
    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/agb$d;)V
    .locals 2

    .prologue
    .line 204
    iget-boolean v0, p1, Lcom/kingroot/kinguser/agb$d;->akd:Z

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/kingroot/kinguser/agb$c;->ajW:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 206
    iget-object v0, p0, Lcom/kingroot/kinguser/agb$c;->ajV:Landroid/widget/ImageView;

    const/high16 v1, 0x43340000    # 180.0f

    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/agb$c;->f(Landroid/view/View;F)V

    .line 211
    :goto_0
    return-void

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/agb$c;->ajW:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Lcom/kingroot/kinguser/agb$c;->ajV:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/agb$c;->f(Landroid/view/View;F)V

    goto :goto_0
.end method

.method a(Lcom/kingroot/kinguser/agb$e;)V
    .locals 2

    .prologue
    .line 128
    check-cast p1, Lcom/kingroot/kinguser/agb$d;

    .line 129
    iget-object v0, p0, Lcom/kingroot/kinguser/agb$c;->ajH:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/kingroot/kinguser/agb$d;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 130
    iget-object v0, p0, Lcom/kingroot/kinguser/agb$c;->ajI:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/kingroot/kinguser/agb$d;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v0, p0, Lcom/kingroot/kinguser/agb$c;->ajJ:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/kingroot/kinguser/agb$d;->akc:Landroid/text/Spanned;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v0, p0, Lcom/kingroot/kinguser/agb$c;->ajG:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 136
    invoke-static {}, Lcom/kingroot/kinguser/bbv;->WK()Lcom/kingroot/kinguser/bbv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bbv;->WR()Z

    move-result v0

    if-nez v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/kingroot/kinguser/agb$c;->ajG:Landroid/view/View;

    new-instance v1, Lcom/kingroot/kinguser/agb$c$1;

    invoke-direct {v1, p0, p1}, Lcom/kingroot/kinguser/agb$c$1;-><init>(Lcom/kingroot/kinguser/agb$c;Lcom/kingroot/kinguser/agb$d;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    :goto_0
    iget-object v0, p1, Lcom/kingroot/kinguser/agb$d;->ake:Lcom/kingroot/kinguser/agb$h;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/kingroot/kinguser/agb$c;->ajX:Landroid/view/View;

    const v1, 0x7f0f020e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 156
    iget-object v1, p1, Lcom/kingroot/kinguser/agb$d;->ake:Lcom/kingroot/kinguser/agb$h;

    iget-object v1, v1, Lcom/kingroot/kinguser/agb$h;->akh:Landroid/text/Spanned;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v0, p0, Lcom/kingroot/kinguser/agb$c;->ajY:Landroid/view/View;

    const v1, 0x7f0f0210

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 159
    iget-object v1, p1, Lcom/kingroot/kinguser/agb$d;->ake:Lcom/kingroot/kinguser/agb$h;

    iget-object v1, v1, Lcom/kingroot/kinguser/agb$h;->aki:Landroid/text/Spanned;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v0, p0, Lcom/kingroot/kinguser/agb$c;->ajZ:Landroid/view/View;

    const v1, 0x7f0f0212

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 162
    iget-object v1, p1, Lcom/kingroot/kinguser/agb$d;->ake:Lcom/kingroot/kinguser/agb$h;

    iget-object v1, v1, Lcom/kingroot/kinguser/agb$h;->akj:Landroid/text/Spanned;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/agb$c;->ajX:Landroid/view/View;

    new-instance v1, Lcom/kingroot/kinguser/agb$c$2;

    invoke-direct {v1, p0, p1}, Lcom/kingroot/kinguser/agb$c$2;-><init>(Lcom/kingroot/kinguser/agb$c;Lcom/kingroot/kinguser/agb$d;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    iget-object v0, p0, Lcom/kingroot/kinguser/agb$c;->ajY:Landroid/view/View;

    new-instance v1, Lcom/kingroot/kinguser/agb$c$3;

    invoke-direct {v1, p0, p1}, Lcom/kingroot/kinguser/agb$c$3;-><init>(Lcom/kingroot/kinguser/agb$c;Lcom/kingroot/kinguser/agb$d;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    iget-object v0, p0, Lcom/kingroot/kinguser/agb$c;->ajZ:Landroid/view/View;

    new-instance v1, Lcom/kingroot/kinguser/agb$c$4;

    invoke-direct {v1, p0, p1}, Lcom/kingroot/kinguser/agb$c$4;-><init>(Lcom/kingroot/kinguser/agb$c;Lcom/kingroot/kinguser/agb$d;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/agb$c;->a(Lcom/kingroot/kinguser/agb$d;)V

    .line 201
    return-void

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/agb$c;->ajG:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0
.end method
