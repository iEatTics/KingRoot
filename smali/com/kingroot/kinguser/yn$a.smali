.class public abstract Lcom/kingroot/kinguser/yn$a;
.super Lcom/kingroot/kinguser/wr;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/common/uilib/template/PinnedHeaderListView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/yn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/yn$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/kingroot/kinguser/wr;",
        "Lcom/kingroot/common/uilib/template/PinnedHeaderListView$a;"
    }
.end annotation


# instance fields
.field protected Vt:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/yn$b",
            "<TDataType;>;>;"
        }
    .end annotation
.end field

.field protected Vu:I

.field private mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 137
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/kingroot/kinguser/yn$a;-><init>(Landroid/content/Context;I)V

    .line 138
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/kingroot/kinguser/wr;-><init>()V

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/yn$a;->Vt:Ljava/util/ArrayList;

    .line 127
    const/4 v0, -0x1

    iput v0, p0, Lcom/kingroot/kinguser/yn$a;->Vu:I

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/yn$a;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 141
    if-eqz p1, :cond_0

    .line 142
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/yn$a;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 144
    :cond_0
    iput p2, p0, Lcom/kingroot/kinguser/yn$a;->Vu:I

    .line 145
    return-void
.end method

.method private bW(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/kingroot/kinguser/yn$a;->Vt:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 262
    const-string v0, ""

    .line 265
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/yn$a;->Vt:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/yn$b;

    iget-object v0, v0, Lcom/kingroot/kinguser/yn$b;->title:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public abstract b(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public b(Landroid/view/View;II)V
    .locals 2

    .prologue
    .line 245
    iget v0, p0, Lcom/kingroot/kinguser/yn$a;->Vu:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 257
    :goto_0
    return-void

    .line 248
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/yn$a$a;

    .line 249
    if-nez v0, :cond_1

    .line 250
    new-instance v1, Lcom/kingroot/kinguser/yn$a$a;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/yn$a$a;-><init>(Lcom/kingroot/kinguser/yn$a;)V

    .line 251
    iget v0, p0, Lcom/kingroot/kinguser/yn$a;->Vu:I

    .line 252
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/kingroot/kinguser/yn$a$a;->Vv:Landroid/widget/TextView;

    .line 253
    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    .line 255
    :cond_1
    invoke-direct {p0, p2}, Lcom/kingroot/kinguser/yn$a;->bW(I)Ljava/lang/String;

    move-result-object v1

    .line 256
    iget-object v0, v0, Lcom/kingroot/kinguser/yn$a$a;->Vv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public bU(I)Lcom/kingroot/kinguser/yn$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/kingroot/kinguser/yn$b",
            "<TDataType;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 196
    iget-object v1, p0, Lcom/kingroot/kinguser/yn$a;->Vt:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-object v0

    .line 200
    :cond_1
    iget-object v1, p0, Lcom/kingroot/kinguser/yn$a;->Vt:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 204
    iget-object v0, p0, Lcom/kingroot/kinguser/yn$a;->Vt:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/yn$b;

    goto :goto_0
.end method

.method public bV(I)I
    .locals 2

    .prologue
    .line 214
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/yn$a;->Vt:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/yn$a;->Vt:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 215
    :cond_0
    const/4 v0, 0x0

    .line 226
    :goto_0
    return v0

    .line 217
    :cond_1
    add-int/lit8 v0, p1, 0x1

    iget-object v1, p0, Lcom/kingroot/kinguser/yn$a;->Vt:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 218
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/yn$a;->bW(I)Ljava/lang/String;

    move-result-object v0

    .line 219
    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/yn$a;->bW(I)Ljava/lang/String;

    move-result-object v1

    .line 220
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 221
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 222
    const/4 v0, 0x2

    goto :goto_0

    .line 226
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public abstract c(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/kingroot/kinguser/yn$a;->Vt:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 176
    const/4 v0, 0x0

    .line 179
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/yn$a;->Vt:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 118
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/yn$a;->bU(I)Lcom/kingroot/kinguser/yn$b;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 209
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/kingroot/kinguser/yn$a;->Vt:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 167
    const/4 v0, -0x1

    .line 170
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/yn$a;->Vt:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/yn$b;

    iget v0, v0, Lcom/kingroot/kinguser/yn$b;->type:I

    goto :goto_0
.end method

.method protected getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/kingroot/kinguser/yn$a;->mLayoutInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    .line 149
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/yn$a;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/yn$a;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .prologue
    .line 230
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/yn$a;->getItemViewType(I)I

    move-result v0

    .line 231
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 232
    invoke-virtual {p0, p1, p2, p3}, Lcom/kingroot/kinguser/yn$a;->b(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 234
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/kingroot/kinguser/yn$a;->c(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x2

    return v0
.end method

.method public k(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/yn$b",
            "<TDataType;>;>;)V"
        }
    .end annotation

    .prologue
    .line 187
    iget-object v0, p0, Lcom/kingroot/kinguser/yn$a;->Vt:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 188
    iget-object v0, p0, Lcom/kingroot/kinguser/yn$a;->Vt:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 189
    return-void
.end method

.method public oX()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/yn$b",
            "<TDataType;>;>;"
        }
    .end annotation

    .prologue
    .line 192
    iget-object v0, p0, Lcom/kingroot/kinguser/yn$a;->Vt:Ljava/util/ArrayList;

    return-object v0
.end method
