.class public Lcom/kingroot/kinguser/xx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/LayoutInflaterFactory;


# instance fields
.field private UO:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/yj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/xx;->UO:Ljava/util/List;

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 149
    .line 151
    const/4 v0, -0x1

    const/16 v2, 0x2e

    :try_start_0
    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ne v0, v2, :cond_2

    .line 152
    const-string v0, "View"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 153
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v2, "android.view."

    invoke-virtual {v0, p2, v2, p3}, Landroid/view/LayoutInflater;->createView(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 155
    :goto_0
    if-nez v0, :cond_0

    .line 156
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v2, "android.widget."

    invoke-virtual {v0, p2, v2, p3}, Landroid/view/LayoutInflater;->createView(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 158
    :cond_0
    if-nez v0, :cond_1

    .line 159
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v2, "android.webkit."

    invoke-virtual {v0, p2, v2, p3}, Landroid/view/LayoutInflater;->createView(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 171
    :cond_1
    :goto_1
    return-object v0

    .line 162
    :cond_2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2, p3}, Landroid/view/LayoutInflater;->createView(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    .line 167
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 169
    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/view/View;)V
    .locals 6

    .prologue
    .line 48
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 49
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 50
    invoke-interface {p2, v0}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    .line 51
    invoke-interface {p2, v0}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    .line 104
    invoke-static {v2}, Lcom/kingroot/kinguser/yc;->dr(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 106
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 107
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v4

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v5

    .line 109
    invoke-static {v2, v3, v4, v5}, Lcom/kingroot/kinguser/yc;->b(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/kingroot/kinguser/yd;

    move-result-object v2

    .line 117
    if-eqz v2, :cond_0

    .line 118
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    :cond_1
    invoke-static {v1}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 127
    new-instance v0, Lcom/kingroot/kinguser/yj;

    invoke-direct {v0}, Lcom/kingroot/kinguser/yj;-><init>()V

    .line 128
    iput-object p3, v0, Lcom/kingroot/kinguser/yj;->view:Landroid/view/View;

    .line 129
    iput-object v1, v0, Lcom/kingroot/kinguser/yj;->UY:Ljava/util/List;

    .line 130
    iget-object v1, p0, Lcom/kingroot/kinguser/xx;->UO:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    invoke-virtual {v0}, Lcom/kingroot/kinguser/yj;->apply()V

    .line 134
    :cond_2
    return-void

    .line 120
    :catch_0
    move-exception v2

    goto :goto_1
.end method


# virtual methods
.method public clean()V
    .locals 3

    .prologue
    .line 188
    iget-object v0, p0, Lcom/kingroot/kinguser/xx;->UO:Ljava/util/List;

    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    :cond_0
    return-void

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/xx;->UO:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/yj;

    .line 193
    iget-object v2, v0, Lcom/kingroot/kinguser/yj;->view:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 196
    invoke-virtual {v0}, Lcom/kingroot/kinguser/yj;->clean()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 31
    const-string v1, "http://schemas.android.com/android/skin"

    const-string v2, "enable"

    const/4 v3, 0x0

    invoke-interface {p4, v1, v2, v3}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 32
    if-nez v1, :cond_1

    .line 44
    :cond_0
    :goto_0
    return-object v0

    .line 36
    :cond_1
    invoke-direct {p0, p3, p2, p4}, Lcom/kingroot/kinguser/xx;->a(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v1

    .line 38
    if-eqz v1, :cond_0

    .line 42
    invoke-direct {p0, p3, p4, v1}, Lcom/kingroot/kinguser/xx;->a(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/view/View;)V

    move-object v0, v1

    .line 44
    goto :goto_0
.end method
