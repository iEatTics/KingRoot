.class public Lcom/kingroot/kinguser/agc;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/agc$c;,
        Lcom/kingroot/kinguser/agc$d;,
        Lcom/kingroot/kinguser/agc$b;,
        Lcom/kingroot/kinguser/agc$a;
    }
.end annotation


# instance fields
.field private akk:I

.field private akl:I

.field private akm:I

.field private akn:I

.field private ako:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/agc$c;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/agc$c;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 35
    iput v0, p0, Lcom/kingroot/kinguser/agc;->akl:I

    .line 37
    iput v0, p0, Lcom/kingroot/kinguser/agc;->akn:I

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/agc;->ako:Ljava/util/List;

    .line 41
    iput-object p1, p0, Lcom/kingroot/kinguser/agc;->mContext:Landroid/content/Context;

    .line 42
    iget-object v0, p0, Lcom/kingroot/kinguser/agc;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/agc;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 43
    iput-object p2, p0, Lcom/kingroot/kinguser/agc;->ako:Ljava/util/List;

    .line 44
    return-void
.end method

.method private ae(J)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 250
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 251
    const-string v1, "yyyy-MM-dd HH:mm:ss"

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 252
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 253
    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 255
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 256
    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 257
    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 260
    invoke-virtual {v2, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    const/16 v0, 0xb

    const/16 v1, 0x10

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 266
    :goto_0
    return-object v0

    .line 263
    :cond_0
    const/4 v0, 0x5

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private eB(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 303
    const-string v1, "/data/data"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 304
    if-ne v1, v2, :cond_0

    .line 328
    :goto_0
    return-object v0

    .line 308
    :cond_0
    const-string v1, ""

    .line 310
    const-string v1, "/data/data-lib"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 311
    if-ne v1, v2, :cond_1

    .line 313
    const/16 v1, 0xb

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 314
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 315
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 323
    :goto_1
    :try_start_0
    iget-object v2, p0, Lcom/kingroot/kinguser/agc;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 324
    iget-object v2, p0, Lcom/kingroot/kinguser/agc;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 318
    :cond_1
    const/16 v1, 0xf

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 319
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 320
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 325
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private eC(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 333
    const-string v0, "zygote"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "system_server"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 334
    :cond_0
    const/4 v0, 0x1

    .line 336
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private fp(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 271
    const-string v1, "/data/data"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 272
    if-ne v1, v2, :cond_0

    .line 298
    :goto_0
    return-object v0

    .line 276
    :cond_0
    const-string v1, ""

    .line 278
    const-string v1, "/data/data-lib"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 279
    if-ne v1, v2, :cond_1

    .line 281
    const/16 v1, 0xb

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 282
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 283
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 292
    :goto_1
    :try_start_0
    iget-object v2, p0, Lcom/kingroot/kinguser/agc;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 293
    iget-object v2, p0, Lcom/kingroot/kinguser/agc;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 286
    :cond_1
    const/16 v1, 0xf

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 287
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 288
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 294
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private vJ()I
    .locals 2

    .prologue
    .line 244
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 245
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/kingroot/kinguser/agc;->ako:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/kingroot/kinguser/agc;->ako:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 58
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/kingroot/kinguser/agc;->ako:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/agc$c;

    .line 69
    if-nez v0, :cond_0

    .line 70
    const/4 v0, 0x0

    .line 73
    :goto_0
    return v0

    :cond_0
    iget v0, v0, Lcom/kingroot/kinguser/agc$c;->mType:I

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12

    .prologue
    const v10, 0x7f070061

    const/16 v6, 0xa

    const/4 v3, 0x0

    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 78
    .line 82
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/agc;->getItemViewType(I)I

    move-result v4

    .line 83
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/agc;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/agc$c;

    .line 85
    packed-switch v4, :pswitch_data_0

    move-object v1, v3

    move-object v2, v3

    .line 132
    :goto_0
    packed-switch v4, :pswitch_data_1

    .line 240
    :cond_0
    :goto_1
    return-object p2

    .line 88
    :pswitch_0
    if-nez p2, :cond_1

    .line 89
    new-instance v2, Lcom/kingroot/kinguser/agc$d;

    invoke-direct {v2, p0}, Lcom/kingroot/kinguser/agc$d;-><init>(Lcom/kingroot/kinguser/agc;)V

    .line 90
    iget-object v1, p0, Lcom/kingroot/kinguser/agc;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v5, 0x7f0300a5

    invoke-virtual {v1, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 91
    const v1, 0x7f0f021a

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/kingroot/kinguser/agc$d;->akx:Landroid/widget/TextView;

    .line 92
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    move-object v2, v3

    goto :goto_0

    .line 94
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/agc$d;

    move-object v2, v3

    .line 96
    goto :goto_0

    .line 99
    :pswitch_1
    if-nez p2, :cond_2

    .line 100
    new-instance v2, Lcom/kingroot/kinguser/agc$a;

    invoke-direct {v2, p0}, Lcom/kingroot/kinguser/agc$a;-><init>(Lcom/kingroot/kinguser/agc;)V

    .line 101
    iget-object v1, p0, Lcom/kingroot/kinguser/agc;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v5, 0x7f0300a4

    invoke-virtual {v1, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 102
    const v1, 0x7f0f0215

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/kingroot/kinguser/agc$a;->akp:Landroid/widget/TextView;

    .line 103
    const v1, 0x7f0f0216

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/kingroot/kinguser/agc$a;->akq:Landroid/widget/TextView;

    .line 104
    const v1, 0x7f0f0217

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/kingroot/kinguser/agc$a;->akr:Landroid/widget/ImageView;

    .line 105
    const v1, 0x7f0f0218

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/kingroot/kinguser/agc$a;->aks:Landroid/widget/TextView;

    .line 106
    const v1, 0x7f0f0219

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/kingroot/kinguser/agc$a;->akt:Landroid/widget/TextView;

    .line 107
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v3

    move-object v11, v2

    move-object v2, v3

    move-object v3, v11

    goto/16 :goto_0

    .line 109
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/agc$a;

    move-object v2, v3

    move-object v11, v1

    move-object v1, v3

    move-object v3, v11

    .line 112
    goto/16 :goto_0

    .line 114
    :pswitch_2
    if-nez p2, :cond_3

    .line 115
    new-instance v2, Lcom/kingroot/kinguser/agc$b;

    invoke-direct {v2, p0}, Lcom/kingroot/kinguser/agc$b;-><init>(Lcom/kingroot/kinguser/agc;)V

    .line 116
    iget-object v1, p0, Lcom/kingroot/kinguser/agc;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v5, 0x7f0300a4

    invoke-virtual {v1, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 117
    const v1, 0x7f0f0215

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/kingroot/kinguser/agc$b;->akp:Landroid/widget/TextView;

    .line 118
    const v1, 0x7f0f0216

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/kingroot/kinguser/agc$b;->akq:Landroid/widget/TextView;

    .line 119
    const v1, 0x7f0f0217

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/kingroot/kinguser/agc$b;->akr:Landroid/widget/ImageView;

    .line 120
    const v1, 0x7f0f0218

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/kingroot/kinguser/agc$b;->aks:Landroid/widget/TextView;

    .line 121
    const v1, 0x7f0f0219

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/kingroot/kinguser/agc$b;->akt:Landroid/widget/TextView;

    .line 122
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v3

    goto/16 :goto_0

    .line 124
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/agc$b;

    move-object v2, v1

    move-object v1, v3

    goto/16 :goto_0

    .line 134
    :pswitch_3
    iget-object v0, v1, Lcom/kingroot/kinguser/agc$d;->akx:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/kingroot/kinguser/agc;->vJ()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 138
    :pswitch_4
    iget-object v1, v3, Lcom/kingroot/kinguser/agc$a;->akp:Landroid/widget/TextView;

    iget-wide v4, v0, Lcom/kingroot/kinguser/agc$c;->mTime:J

    invoke-direct {p0, v4, v5}, Lcom/kingroot/kinguser/agc;->ae(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v1, v0, Lcom/kingroot/kinguser/agc$c;->akw:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/agc;->fp(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 140
    iget-object v2, v0, Lcom/kingroot/kinguser/agc$c;->akw:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/kingroot/kinguser/agc;->eB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 141
    iget-object v0, v0, Lcom/kingroot/kinguser/agc$c;->akv:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/agc;->eC(Ljava/lang/String;)Z

    move-result v0

    .line 143
    if-eqz v1, :cond_6

    if-eqz v2, :cond_6

    if-eqz v0, :cond_6

    .line 145
    iget v0, p0, Lcom/kingroot/kinguser/agc;->akl:I

    if-nez v0, :cond_4

    .line 146
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 147
    invoke-virtual {v0, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/agc;->akk:I

    .line 150
    :cond_4
    iget-object v0, v3, Lcom/kingroot/kinguser/agc$a;->akq:Landroid/widget/TextView;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v0, v3, Lcom/kingroot/kinguser/agc$a;->akr:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 152
    iget-object v0, v3, Lcom/kingroot/kinguser/agc$a;->aks:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 153
    iget-object v0, v3, Lcom/kingroot/kinguser/agc$a;->akt:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 154
    iget-object v0, v3, Lcom/kingroot/kinguser/agc$a;->akr:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 155
    iget-object v0, v3, Lcom/kingroot/kinguser/agc$a;->aks:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget v0, p0, Lcom/kingroot/kinguser/agc;->akl:I

    iget v1, p0, Lcom/kingroot/kinguser/agc;->akk:I

    if-ne v0, v1, :cond_5

    .line 159
    iget-object v0, v3, Lcom/kingroot/kinguser/agc$a;->akt:Landroid/widget/TextView;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f070059

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    :goto_2
    iget v0, p0, Lcom/kingroot/kinguser/agc;->akl:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/kingroot/kinguser/agc;->akl:I

    .line 166
    iget v0, p0, Lcom/kingroot/kinguser/agc;->akl:I

    if-ne v0, v6, :cond_0

    .line 167
    iput v8, p0, Lcom/kingroot/kinguser/agc;->akl:I

    goto/16 :goto_1

    .line 162
    :cond_5
    iget-object v0, v3, Lcom/kingroot/kinguser/agc$a;->akt:Landroid/widget/TextView;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f07005b

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 169
    :cond_6
    if-eqz v1, :cond_7

    if-eqz v2, :cond_7

    if-nez v0, :cond_7

    .line 171
    iget-object v0, v3, Lcom/kingroot/kinguser/agc$a;->akq:Landroid/widget/TextView;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v0, v3, Lcom/kingroot/kinguser/agc$a;->akr:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 173
    iget-object v0, v3, Lcom/kingroot/kinguser/agc$a;->aks:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 174
    iget-object v0, v3, Lcom/kingroot/kinguser/agc$a;->akt:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 175
    iget-object v0, v3, Lcom/kingroot/kinguser/agc$a;->akr:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 176
    iget-object v0, v3, Lcom/kingroot/kinguser/agc$a;->aks:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v0, v3, Lcom/kingroot/kinguser/agc$a;->akt:Landroid/widget/TextView;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f07005a

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 178
    :cond_7
    if-eqz v0, :cond_b

    if-eqz v1, :cond_8

    if-nez v2, :cond_b

    .line 180
    :cond_8
    iget v0, p0, Lcom/kingroot/kinguser/agc;->akn:I

    if-nez v0, :cond_9

    .line 181
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 182
    invoke-virtual {v0, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/agc;->akm:I

    .line 185
    :cond_9
    iget v0, p0, Lcom/kingroot/kinguser/agc;->akn:I

    iget v1, p0, Lcom/kingroot/kinguser/agc;->akm:I

    if-ne v0, v1, :cond_a

    .line 187
    iget-object v0, v3, Lcom/kingroot/kinguser/agc$a;->akq:Landroid/widget/TextView;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f07005e

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    :goto_3
    iget-object v0, v3, Lcom/kingroot/kinguser/agc$a;->akr:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 193
    iget-object v0, v3, Lcom/kingroot/kinguser/agc$a;->aks:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 194
    iget-object v0, v3, Lcom/kingroot/kinguser/agc$a;->akt:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 196
    iget v0, p0, Lcom/kingroot/kinguser/agc;->akn:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/kingroot/kinguser/agc;->akn:I

    .line 197
    iget v0, p0, Lcom/kingroot/kinguser/agc;->akn:I

    if-ne v0, v6, :cond_0

    .line 198
    iput v8, p0, Lcom/kingroot/kinguser/agc;->akn:I

    goto/16 :goto_1

    .line 190
    :cond_a
    iget-object v0, v3, Lcom/kingroot/kinguser/agc$a;->akq:Landroid/widget/TextView;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f070060

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 201
    :cond_b
    if-nez v0, :cond_0

    if-eqz v1, :cond_c

    if-nez v2, :cond_0

    .line 203
    :cond_c
    iget-object v0, v3, Lcom/kingroot/kinguser/agc$a;->akq:Landroid/widget/TextView;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f07005f

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v0, v3, Lcom/kingroot/kinguser/agc$a;->akr:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 205
    iget-object v0, v3, Lcom/kingroot/kinguser/agc$a;->aks:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 206
    iget-object v0, v3, Lcom/kingroot/kinguser/agc$a;->akt:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 211
    :pswitch_5
    iget-object v1, v0, Lcom/kingroot/kinguser/agc$c;->akw:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/agc;->fp(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 212
    iget-object v3, v0, Lcom/kingroot/kinguser/agc$c;->akw:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/kingroot/kinguser/agc;->eB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 214
    iget-object v4, v2, Lcom/kingroot/kinguser/agc$b;->akp:Landroid/widget/TextView;

    iget-wide v6, v0, Lcom/kingroot/kinguser/agc$c;->mTime:J

    invoke-direct {p0, v6, v7}, Lcom/kingroot/kinguser/agc;->ae(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    iget-object v0, v2, Lcom/kingroot/kinguser/agc$b;->akq:Landroid/widget/TextView;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    if-eqz v1, :cond_d

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 217
    :cond_d
    iget-object v0, v2, Lcom/kingroot/kinguser/agc$b;->akr:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 218
    iget-object v0, v2, Lcom/kingroot/kinguser/agc$b;->aks:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 220
    iget-object v0, v2, Lcom/kingroot/kinguser/agc$b;->akt:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 221
    iget-object v0, v2, Lcom/kingroot/kinguser/agc$b;->akt:Landroid/widget/TextView;

    const v1, 0x7f070474

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 224
    :cond_e
    iget-object v0, v2, Lcom/kingroot/kinguser/agc$b;->akr:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 225
    iget-object v0, v2, Lcom/kingroot/kinguser/agc$b;->akr:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 226
    iget-object v0, v2, Lcom/kingroot/kinguser/agc$b;->aks:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 227
    iget-object v0, v2, Lcom/kingroot/kinguser/agc$b;->aks:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    iget-object v0, v2, Lcom/kingroot/kinguser/agc$b;->akt:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 230
    iget-object v0, v2, Lcom/kingroot/kinguser/agc$b;->akt:Landroid/widget/TextView;

    const v1, 0x7f070473

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 132
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x4

    return v0
.end method
