.class abstract Lcom/kingroot/kinguser/agh$b;
.super Lcom/kingroot/kinguser/agh$a;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/agh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "b"
.end annotation


# instance fields
.field ajH:Landroid/widget/ImageView;

.field ajL:Landroid/view/View;

.field ajP:Landroid/widget/TextView;

.field private alK:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/kingroot/kinguser/agh$k;",
            ">;"
        }
    .end annotation
.end field

.field alL:Landroid/widget/TextView;

.field alM:Landroid/widget/TextView;

.field alN:Landroid/widget/Button;

.field alO:Landroid/widget/Button;

.field alP:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/kingroot/kinguser/agh$k;)V
    .locals 2

    .prologue
    .line 233
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/agh$a;-><init>(Landroid/view/View;)V

    .line 230
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/agh$b;->alK:Ljava/lang/ref/WeakReference;

    .line 234
    iget-object v0, p0, Lcom/kingroot/kinguser/agh$b;->itemView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f0f0109

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/ws;->h(Landroid/view/View;)V

    .line 236
    const v0, 0x7f0f010b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/agh$b;->ajH:Landroid/widget/ImageView;

    .line 237
    const v0, 0x7f0f010c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/agh$b;->ajP:Landroid/widget/TextView;

    .line 238
    const v0, 0x7f0f010d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/agh$b;->alL:Landroid/widget/TextView;

    .line 239
    const v0, 0x7f0f010e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/agh$b;->alM:Landroid/widget/TextView;

    .line 240
    const v0, 0x7f0f010f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kingroot/kinguser/agh$b;->alN:Landroid/widget/Button;

    .line 241
    iget-object v0, p0, Lcom/kingroot/kinguser/agh$b;->alN:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    const v0, 0x7f0f0118

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 245
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    .line 247
    const v0, 0x7f0f00df

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kingroot/kinguser/agh$b;->alO:Landroid/widget/Button;

    .line 248
    iget-object v0, p0, Lcom/kingroot/kinguser/agh$b;->alO:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    const v0, 0x7f0f0123

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kingroot/kinguser/agh$b;->alP:Landroid/widget/Button;

    .line 251
    iget-object v0, p0, Lcom/kingroot/kinguser/agh$b;->alP:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    const v0, 0x7f0f0122

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/agh$b;->ajL:Landroid/view/View;

    .line 254
    if-eqz p2, :cond_0

    .line 255
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/agh$b;->alK:Ljava/lang/ref/WeakReference;

    .line 257
    :cond_0
    return-void
.end method


# virtual methods
.method a(Lcom/kingroot/kinguser/bcy;)V
    .locals 0

    .prologue
    .line 261
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/kingroot/kinguser/agh$b;->alK:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/agh$b;->alK:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/agh$k;

    .line 270
    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 275
    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 285
    :sswitch_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/agh$b;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/kingroot/kinguser/agh$k;->f(Landroid/view/View;I)V

    goto :goto_0

    .line 277
    :sswitch_1
    invoke-virtual {p0}, Lcom/kingroot/kinguser/agh$b;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/kingroot/kinguser/agh$k;->d(Landroid/view/View;I)V

    goto :goto_0

    .line 281
    :sswitch_2
    invoke-virtual {p0}, Lcom/kingroot/kinguser/agh$b;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/kingroot/kinguser/agh$k;->e(Landroid/view/View;I)V

    goto :goto_0

    .line 275
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0f00df -> :sswitch_0
        0x7f0f010f -> :sswitch_1
        0x7f0f0123 -> :sswitch_2
    .end sparse-switch
.end method
