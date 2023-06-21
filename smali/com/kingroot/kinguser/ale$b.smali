.class Lcom/kingroot/kinguser/ale$b;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/ale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field public afV:Landroid/widget/TextView;

.field private akC:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/widget/ImageView;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private akE:Lcom/kingroot/kinguser/apv$b;

.field private alK:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/kingroot/kinguser/ale$a;",
            ">;"
        }
    .end annotation
.end field

.field public awb:Landroid/widget/ImageView;

.field public awc:Landroid/widget/TextView;

.field public awd:Landroid/widget/TextView;

.field public awe:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

.field public awm:Landroid/widget/TextView;

.field final synthetic awn:Lcom/kingroot/kinguser/ale;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/ale;Landroid/view/View;Lcom/kingroot/kinguser/ale$a;)V
    .locals 1

    .prologue
    .line 179
    iput-object p1, p0, Lcom/kingroot/kinguser/ale$b;->awn:Lcom/kingroot/kinguser/ale;

    .line 180
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 175
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/ale$b;->akC:Ljava/util/HashMap;

    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/ale$b;->alK:Ljava/lang/ref/WeakReference;

    .line 240
    new-instance v0, Lcom/kingroot/kinguser/ale$b$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/ale$b$1;-><init>(Lcom/kingroot/kinguser/ale$b;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ale$b;->akE:Lcom/kingroot/kinguser/apv$b;

    .line 181
    const v0, 0x7f0f00d1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/ale$b;->afV:Landroid/widget/TextView;

    .line 182
    const v0, 0x7f0f0220

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/ale$b;->awc:Landroid/widget/TextView;

    .line 183
    const v0, 0x7f0f0221

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/ale$b;->awd:Landroid/widget/TextView;

    .line 184
    const v0, 0x7f0f0148

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/ale$b;->awb:Landroid/widget/ImageView;

    .line 185
    const v0, 0x7f0f00f4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    iput-object v0, p0, Lcom/kingroot/kinguser/ale$b;->awe:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    .line 186
    const v0, 0x7f0f0223

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/ale$b;->awm:Landroid/widget/TextView;

    .line 187
    if-eqz p3, :cond_0

    .line 188
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ale$b;->alK:Ljava/lang/ref/WeakReference;

    .line 190
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/ale$b;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/kingroot/kinguser/ale$b;->akC:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/ame;)V
    .locals 8

    .prologue
    .line 193
    check-cast p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    .line 194
    iget-object v0, p0, Lcom/kingroot/kinguser/ale$b;->afV:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->appName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v0, p0, Lcom/kingroot/kinguser/ale$b;->awc:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f0703e1

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->downloadCount:I

    int-to-long v6, v6

    .line 196
    invoke-static {v6, v7}, Lcom/kingroot/kinguser/anf;->bP(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 195
    invoke-virtual {v2, v3, v4}, Lcom/kingroot/kinguser/zi;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->fileSize:J

    .line 196
    invoke-static {v2, v3}, Lcom/kingroot/kinguser/anf;->bQ(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 195
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v0, p0, Lcom/kingroot/kinguser/ale$b;->awd:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->describe:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v0, p0, Lcom/kingroot/kinguser/ale$b;->awe:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    invoke-virtual {v0, p0}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    iget-object v0, p0, Lcom/kingroot/kinguser/ale$b;->awe:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    iget-object v1, p0, Lcom/kingroot/kinguser/ale$b;->awb:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setTag(Ljava/lang/Object;)V

    .line 200
    iget-object v0, p0, Lcom/kingroot/kinguser/ale$b;->awe:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    invoke-virtual {p1, v0}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->a(Lcom/kingcore/uilib/TextRoundCornerProgressBar;)V

    .line 201
    iget-object v0, p0, Lcom/kingroot/kinguser/ale$b;->awm:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    iget-object v0, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->iconUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/kingroot/kinguser/ale$b;->awb:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/kingroot/kinguser/ale$b;->awb:Landroid/widget/ImageView;

    const v1, 0x7f02010d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 205
    iget-object v0, p0, Lcom/kingroot/kinguser/ale$b;->akC:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/kingroot/kinguser/ale$b;->awb:Landroid/widget/ImageView;

    iget-object v2, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->iconUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    invoke-static {}, Lcom/kingroot/kinguser/apv;->LO()Lcom/kingroot/kinguser/apv;

    move-result-object v0

    iget-object v1, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->iconUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/kingroot/kinguser/ale$b;->akE:Lcom/kingroot/kinguser/apv$b;

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/apv;->a(Ljava/lang/String;Lcom/kingroot/kinguser/apv$b;)V

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ale$b;->alK:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kingroot/kinguser/ale$b;->alK:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/kingroot/kinguser/ale$b;->alK:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ale$a;

    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/ale$a;->a(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;)V

    .line 212
    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 216
    iget-object v0, p0, Lcom/kingroot/kinguser/ale$b;->alK:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/ale$b;->alK:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ale$b;->getAdapterPosition()I

    move-result v1

    .line 222
    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    .line 225
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 226
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 227
    sparse-switch v0, :sswitch_data_0

    .line 237
    :goto_1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0

    .line 229
    :sswitch_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ale$b;->alK:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ale$a;

    invoke-interface {v0, p1, v1}, Lcom/kingroot/kinguser/ale$a;->h(Landroid/view/View;I)V

    goto :goto_1

    .line 232
    :sswitch_1
    iget-object v0, p0, Lcom/kingroot/kinguser/ale$b;->alK:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ale$a;

    invoke-interface {v0, p1, v1}, Lcom/kingroot/kinguser/ale$a;->i(Landroid/view/View;I)V

    goto :goto_1

    .line 227
    :sswitch_data_0
    .sparse-switch
        0x7f0f00f4 -> :sswitch_1
        0x7f0f0223 -> :sswitch_0
    .end sparse-switch
.end method
