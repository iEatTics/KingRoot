.class public Lcom/kingroot/kinguser/axd;
.super Lcom/kingroot/kinguser/ans;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/agd$b;


# instance fields
.field private aAX:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

.field private aWQ:Lcom/kingroot/kinguser/bif;

.field private aXE:I

.field private aXF:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

.field private aXG:Lcom/kingroot/kinguser/agd$a;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private aXH:Lcom/kingroot/kinguser/agd$a;

.field private aXI:Lcom/kingroot/kinguser/agd;

.field private aXJ:Lcom/kingroot/kinguser/bid;

.field private final ahM:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/agd$a;",
            ">;"
        }
    .end annotation
.end field

.field private akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

.field private awu:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 109
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/ans;-><init>(Landroid/content/Context;)V

    .line 85
    iput-object v1, p0, Lcom/kingroot/kinguser/axd;->mTitle:Ljava/lang/String;

    .line 86
    const/4 v0, -0x1

    iput v0, p0, Lcom/kingroot/kinguser/axd;->aXE:I

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/axd;->ahM:Ljava/util/List;

    .line 92
    iput-object v1, p0, Lcom/kingroot/kinguser/axd;->aXG:Lcom/kingroot/kinguser/agd$a;

    .line 93
    iput-object v1, p0, Lcom/kingroot/kinguser/axd;->aXH:Lcom/kingroot/kinguser/agd$a;

    .line 96
    iput-object v1, p0, Lcom/kingroot/kinguser/axd;->aXI:Lcom/kingroot/kinguser/agd;

    .line 99
    iput-object v1, p0, Lcom/kingroot/kinguser/axd;->aWQ:Lcom/kingroot/kinguser/bif;

    .line 529
    new-instance v0, Lcom/kingroot/kinguser/page/DefaultAppChosenPage$8;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/page/DefaultAppChosenPage$8;-><init>(Lcom/kingroot/kinguser/axd;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axd;->awu:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;

    .line 643
    new-instance v0, Lcom/kingroot/kinguser/page/DefaultAppChosenPage$9;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/page/DefaultAppChosenPage$9;-><init>(Lcom/kingroot/kinguser/axd;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axd;->akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    .line 110
    return-void
.end method

.method private TM()V
    .locals 11
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 194
    iget-object v0, p0, Lcom/kingroot/kinguser/axd;->ahM:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 196
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v7

    .line 197
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 198
    const/4 v1, 0x1

    .line 200
    iget v0, p0, Lcom/kingroot/kinguser/axd;->aXE:I

    packed-switch v0, :pswitch_data_0

    .line 298
    :cond_0
    :pswitch_0
    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/kingroot/kinguser/axd;->aAX:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    if-eqz v0, :cond_1

    .line 300
    iget-object v0, p0, Lcom/kingroot/kinguser/axd;->aXF:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->pkgName:Ljava/lang/String;

    const-string v1, "DefaultSetting"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/apd;->an(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    new-instance v0, Lcom/kingroot/kinguser/ala$a;

    iget-object v1, p0, Lcom/kingroot/kinguser/axd;->aXF:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->pkgName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/kingroot/kinguser/ala$a;-><init>(Ljava/lang/String;Landroid/content/pm/ResolveInfo;)V

    iget-object v1, p0, Lcom/kingroot/kinguser/axd;->aXF:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->appName:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/kingroot/kinguser/axd;->aAX:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/agd$a;->a(Lcom/kingroot/kinguser/ala$a;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Z)Lcom/kingroot/kinguser/agd$a;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/axd;->aXH:Lcom/kingroot/kinguser/agd$a;

    .line 307
    iget-object v0, p0, Lcom/kingroot/kinguser/axd;->aXH:Lcom/kingroot/kinguser/agd$a;

    const/4 v1, 0x1

    iput v1, v0, Lcom/kingroot/kinguser/agd$a;->status:I

    .line 308
    iget-object v0, p0, Lcom/kingroot/kinguser/axd;->aXH:Lcom/kingroot/kinguser/agd$a;

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    :cond_1
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 313
    const/4 v1, 0x0

    .line 316
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 317
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/agd$a;

    .line 318
    iget-boolean v3, v0, Lcom/kingroot/kinguser/agd$a;->akN:Z

    if-eqz v3, :cond_d

    .line 319
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    :goto_1
    move-object v1, v0

    .line 322
    goto :goto_0

    .line 202
    :pswitch_1
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "default_input_method"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 204
    const-string v0, "input_method"

    invoke-virtual {v7, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 205
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v0

    .line 206
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 207
    iget-object v0, p0, Lcom/kingroot/kinguser/axd;->aAX:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/kingroot/kinguser/axd;->aAX:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    iget-object v3, v3, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->pkgName:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 209
    const/4 v6, 0x0

    .line 210
    const/4 v5, 0x1

    .line 215
    :goto_3
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 216
    new-instance v0, Lcom/kingroot/kinguser/ala$a;

    .line 217
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3}, Lcom/kingroot/kinguser/ala$a;-><init>(Ljava/lang/String;Landroid/content/pm/ResolveInfo;)V

    .line 218
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 219
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/inputmethod/InputMethodInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 216
    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/agd$a;->a(Lcom/kingroot/kinguser/ala$a;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Z)Lcom/kingroot/kinguser/agd$a;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/axd;->aXG:Lcom/kingroot/kinguser/agd$a;

    .line 221
    iget-object v0, p0, Lcom/kingroot/kinguser/axd;->aXG:Lcom/kingroot/kinguser/agd$a;

    const/4 v1, 0x0

    iput v1, v0, Lcom/kingroot/kinguser/agd$a;->status:I

    .line 222
    iget-object v0, p0, Lcom/kingroot/kinguser/axd;->aXG:Lcom/kingroot/kinguser/agd$a;

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    move v1, v6

    .line 232
    goto :goto_2

    .line 212
    :cond_2
    const/4 v5, 0x0

    move v6, v1

    goto :goto_3

    .line 224
    :cond_3
    new-instance v0, Lcom/kingroot/kinguser/ala$a;

    .line 225
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3}, Lcom/kingroot/kinguser/ala$a;-><init>(Ljava/lang/String;Landroid/content/pm/ResolveInfo;)V

    .line 226
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 227
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/inputmethod/InputMethodInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 224
    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/agd$a;->a(Lcom/kingroot/kinguser/ala$a;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Z)Lcom/kingroot/kinguser/agd$a;

    move-result-object v0

    .line 229
    const/4 v1, 0x0

    iput v1, v0, Lcom/kingroot/kinguser/agd$a;->status:I

    .line 230
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 245
    :pswitch_2
    iget v0, p0, Lcom/kingroot/kinguser/axd;->aXE:I

    invoke-static {v0}, Lcom/kingroot/kinguser/ala;->eZ(I)Lcom/kingroot/kinguser/ala$a;

    move-result-object v9

    .line 247
    const/4 v6, 0x0

    .line 248
    iget v0, p0, Lcom/kingroot/kinguser/axd;->aXE:I

    invoke-static {v0}, Lcom/kingroot/kinguser/ala;->fa(I)Ljava/util/Collection;

    move-result-object v0

    .line 249
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ala$a;

    .line 250
    iget-object v2, p0, Lcom/kingroot/kinguser/axd;->aAX:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/kingroot/kinguser/ala$a;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/kingroot/kinguser/axd;->aAX:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    iget-object v3, v3, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->pkgName:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 252
    const/4 v7, 0x0

    .line 253
    const/4 v5, 0x1

    .line 259
    :goto_6
    invoke-virtual {v0, v9}, Lcom/kingroot/kinguser/ala$a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 262
    invoke-virtual {v0}, Lcom/kingroot/kinguser/ala$a;->getName()Ljava/lang/String;

    move-result-object v1

    .line 263
    invoke-virtual {v0}, Lcom/kingroot/kinguser/ala$a;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 260
    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/agd$a;->a(Lcom/kingroot/kinguser/ala$a;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Z)Lcom/kingroot/kinguser/agd$a;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/axd;->aXG:Lcom/kingroot/kinguser/agd$a;

    .line 272
    :goto_7
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    if-eqz v5, :cond_9

    .line 276
    if-nez v6, :cond_6

    :goto_8
    move-object v6, v0

    move v1, v7

    .line 293
    goto :goto_5

    .line 255
    :cond_4
    const/4 v5, 0x0

    move v7, v1

    goto :goto_6

    .line 268
    :cond_5
    invoke-virtual {v0}, Lcom/kingroot/kinguser/ala$a;->getName()Ljava/lang/String;

    move-result-object v1

    .line 269
    invoke-virtual {v0}, Lcom/kingroot/kinguser/ala$a;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 266
    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/agd$a;->a(Lcom/kingroot/kinguser/ala$a;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Z)Lcom/kingroot/kinguser/agd$a;

    move-result-object v0

    goto :goto_7

    .line 278
    :cond_6
    iget-object v1, v6, Lcom/kingroot/kinguser/agd$a;->akI:Lcom/kingroot/kinguser/ala$a;

    iget-object v1, v1, Lcom/kingroot/kinguser/ala$a;->resolveInfo:Landroid/content/pm/ResolveInfo;

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/kingroot/kinguser/agd$a;->akI:Lcom/kingroot/kinguser/ala$a;

    iget-object v1, v1, Lcom/kingroot/kinguser/ala$a;->resolveInfo:Landroid/content/pm/ResolveInfo;

    if-eqz v1, :cond_8

    .line 280
    iget-object v1, v6, Lcom/kingroot/kinguser/agd$a;->akI:Lcom/kingroot/kinguser/ala$a;

    iget-object v1, v1, Lcom/kingroot/kinguser/ala$a;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget v1, v1, Landroid/content/pm/ResolveInfo;->priority:I

    iget-object v2, v0, Lcom/kingroot/kinguser/agd$a;->akI:Lcom/kingroot/kinguser/ala$a;

    iget-object v2, v2, Lcom/kingroot/kinguser/ala$a;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget v2, v2, Landroid/content/pm/ResolveInfo;->priority:I

    if-ge v1, v2, :cond_7

    .line 283
    const/4 v0, 0x0

    iput-boolean v0, v6, Lcom/kingroot/kinguser/agd$a;->akN:Z

    move-object v0, v6

    goto :goto_8

    .line 286
    :cond_7
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/kingroot/kinguser/agd$a;->akN:Z

    move-object v0, v6

    goto :goto_8

    .line 290
    :cond_8
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/kingroot/kinguser/agd$a;->akN:Z

    :cond_9
    move-object v0, v6

    goto :goto_8

    .line 325
    :cond_a
    if-eqz v1, :cond_b

    .line 327
    iget-object v0, p0, Lcom/kingroot/kinguser/axd;->ahM:Ljava/util/List;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f070450

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kingroot/kinguser/agd$a;->fq(Ljava/lang/String;)Lcom/kingroot/kinguser/agd$a;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    iget-object v0, p0, Lcom/kingroot/kinguser/axd;->ahM:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    :cond_b
    invoke-static {v8}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 332
    iget-object v0, p0, Lcom/kingroot/kinguser/axd;->ahM:Ljava/util/List;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f07044f

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/agd$a;->fq(Ljava/lang/String;)Lcom/kingroot/kinguser/agd$a;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    new-instance v0, Lcom/kingroot/kinguser/axd$2;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/axd$2;-><init>(Lcom/kingroot/kinguser/axd;)V

    invoke-static {v8, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 342
    iget-object v0, p0, Lcom/kingroot/kinguser/axd;->ahM:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 344
    :cond_c
    return-void

    :cond_d
    move-object v0, v1

    goto/16 :goto_1

    .line 200
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private TN()V
    .locals 1
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 495
    new-instance v0, Lcom/kingroot/kinguser/axd$7;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/axd$7;-><init>(Lcom/kingroot/kinguser/axd;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 520
    return-void
.end method

.method private TO()V
    .locals 1
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 524
    iget-object v0, p0, Lcom/kingroot/kinguser/axd;->aWQ:Lcom/kingroot/kinguser/bif;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/axd;->aWQ:Lcom/kingroot/kinguser/bif;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bif;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/kingroot/kinguser/axd;->aWQ:Lcom/kingroot/kinguser/bif;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bif;->dismiss()V

    .line 527
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/axd;Lcom/kingroot/kinguser/bif;)Lcom/kingroot/kinguser/bif;
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/kingroot/kinguser/axd;->aWQ:Lcom/kingroot/kinguser/bif;

    return-object p1
.end method

.method public static synthetic a(Lcom/kingroot/kinguser/axd;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/kingroot/kinguser/axd;->aAX:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    return-object v0
.end method

.method public static synthetic a(Lcom/kingroot/kinguser/axd;Lcom/kingroot/kinguser/agd$a;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/axd;->f(Lcom/kingroot/kinguser/agd$a;)V

    return-void
.end method

.method static synthetic b(Lcom/kingroot/kinguser/axd;)Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/kingroot/kinguser/axd;->awu:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;

    return-object v0
.end method

.method public static synthetic c(Lcom/kingroot/kinguser/axd;)Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/kingroot/kinguser/axd;->akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    return-object v0
.end method

.method static synthetic d(Lcom/kingroot/kinguser/axd;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/kingroot/kinguser/axd;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/kingroot/kinguser/axd;)I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/kingroot/kinguser/axd;->aXE:I

    return v0
.end method

.method private e(Lcom/kingroot/kinguser/agd$a;)V
    .locals 3

    .prologue
    .line 384
    iget-object v0, p0, Lcom/kingroot/kinguser/axd;->aXJ:Lcom/kingroot/kinguser/bid;

    if-nez v0, :cond_0

    .line 385
    new-instance v0, Lcom/kingroot/kinguser/bid;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/axd;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/bid;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axd;->aXJ:Lcom/kingroot/kinguser/bid;

    .line 386
    iget-object v0, p0, Lcom/kingroot/kinguser/axd;->aXJ:Lcom/kingroot/kinguser/bid;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bid;->show()V

    .line 387
    iget-object v0, p0, Lcom/kingroot/kinguser/axd;->aXJ:Lcom/kingroot/kinguser/bid;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f070460

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->setTitleText(Ljava/lang/String;)V

    .line 388
    iget-object v0, p0, Lcom/kingroot/kinguser/axd;->aXJ:Lcom/kingroot/kinguser/bid;

    .line 389
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f07045f

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 388
    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->d(Ljava/lang/CharSequence;)V

    .line 397
    :goto_0
    iget-object v0, p0, Lcom/kingroot/kinguser/axd;->aXJ:Lcom/kingroot/kinguser/bid;

    new-instance v1, Lcom/kingroot/kinguser/axd$4;

    invoke-direct {v1, p0, p1}, Lcom/kingroot/kinguser/axd$4;-><init>(Lcom/kingroot/kinguser/axd;Lcom/kingroot/kinguser/agd$a;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->b(Lcom/kingroot/kinguser/bid$b;)V

    .line 406
    iget-object v0, p0, Lcom/kingroot/kinguser/axd;->aXJ:Lcom/kingroot/kinguser/bid;

    new-instance v1, Lcom/kingroot/kinguser/axd$5;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/axd$5;-><init>(Lcom/kingroot/kinguser/axd;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->a(Lcom/kingroot/kinguser/bid$b;)V

    .line 414
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18913

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 416
    return-void

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/axd;->aXJ:Lcom/kingroot/kinguser/bid;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bid;->dismiss()V

    .line 394
    iget-object v0, p0, Lcom/kingroot/kinguser/axd;->aXJ:Lcom/kingroot/kinguser/bid;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bid;->show()V

    goto :goto_0
.end method

.method private f(Lcom/kingroot/kinguser/agd$a;)V
    .locals 6

    .prologue
    .line 420
    invoke-direct {p0}, Lcom/kingroot/kinguser/axd;->TN()V

    .line 421
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    sget-object v2, Lcom/kingroot/kinguser/bem;->blm:Lcom/kingroot/kinguser/bem;

    sget-object v3, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v4, 0x0

    new-instance v5, Lcom/kingroot/kinguser/axd$6;

    invoke-direct {v5, p0, p1}, Lcom/kingroot/kinguser/axd$6;-><init>(Lcom/kingroot/kinguser/axd;Lcom/kingroot/kinguser/agd$a;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 491
    return-void
.end method

.method static synthetic f(Lcom/kingroot/kinguser/axd;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/kingroot/kinguser/axd;->TM()V

    return-void
.end method

.method static synthetic g(Lcom/kingroot/kinguser/axd;)Lcom/kingroot/kinguser/agd;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/kingroot/kinguser/axd;->aXI:Lcom/kingroot/kinguser/agd;

    return-object v0
.end method

.method static synthetic h(Lcom/kingroot/kinguser/axd;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/kingroot/kinguser/axd;->TO()V

    return-void
.end method

.method static synthetic i(Lcom/kingroot/kinguser/axd;)Ljava/util/List;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/kingroot/kinguser/axd;->ahM:Ljava/util/List;

    return-object v0
.end method

.method static synthetic j(Lcom/kingroot/kinguser/axd;)Lcom/kingroot/kinguser/bif;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/kingroot/kinguser/axd;->aWQ:Lcom/kingroot/kinguser/bif;

    return-object v0
.end method

.method public static synthetic k(Lcom/kingroot/kinguser/axd;)Lcom/kingroot/kinguser/agd$a;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/kingroot/kinguser/axd;->aXH:Lcom/kingroot/kinguser/agd$a;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/agd$a;)V
    .locals 1
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 374
    iget-boolean v0, p1, Lcom/kingroot/kinguser/agd$a;->akL:Z

    if-eqz v0, :cond_0

    .line 381
    :goto_0
    return-void

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/axd;->aXG:Lcom/kingroot/kinguser/agd$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kingroot/kinguser/axd;->aXG:Lcom/kingroot/kinguser/agd$a;

    iget-boolean v0, v0, Lcom/kingroot/kinguser/agd$a;->akN:Z

    if-eqz v0, :cond_1

    .line 377
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/axd;->e(Lcom/kingroot/kinguser/agd$a;)V

    goto :goto_0

    .line 379
    :cond_1
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/axd;->f(Lcom/kingroot/kinguser/agd$a;)V

    goto :goto_0
.end method

.method protected ah(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lcom/kingroot/kinguser/axd;->aAX:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    if-eqz v0, :cond_0

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 116
    iget-object v1, p0, Lcom/kingroot/kinguser/axd;->aAX:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->pkgName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object v1, p0, Lcom/kingroot/kinguser/axd;->awu:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;

    iget-object v2, p0, Lcom/kingroot/kinguser/axd;->akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    invoke-static {p1, v0, v1, v2}, Lcom/kingroot/kinguser/anf;->a(Ljava/util/List;Ljava/util/List;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;)V

    .line 119
    :cond_0
    return-void
.end method

.method protected oG()Landroid/view/View;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 348
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axd;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03005e

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 349
    const v0, 0x7f0f0160

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 350
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 351
    new-instance v2, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v2}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 352
    new-instance v2, Lcom/kingroot/common/uilib/FixLinearLayoutManager;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/axd;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/kingroot/common/uilib/FixLinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 354
    iget-object v2, p0, Lcom/kingroot/kinguser/axd;->aXF:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    if-eqz v2, :cond_0

    .line 355
    new-instance v2, Lcom/kingroot/kinguser/agd;

    iget-object v3, p0, Lcom/kingroot/kinguser/axd;->ahM:Ljava/util/List;

    iget-object v4, p0, Lcom/kingroot/kinguser/axd;->awu:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;

    iget-object v5, p0, Lcom/kingroot/kinguser/axd;->akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    invoke-direct {v2, v3, p0, v4, v5}, Lcom/kingroot/kinguser/agd;-><init>(Ljava/util/List;Lcom/kingroot/kinguser/agd$b;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;)V

    iput-object v2, p0, Lcom/kingroot/kinguser/axd;->aXI:Lcom/kingroot/kinguser/agd;

    .line 359
    :goto_0
    iget-object v2, p0, Lcom/kingroot/kinguser/axd;->aXI:Lcom/kingroot/kinguser/agd;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 360
    const v0, 0x7f0f0161

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 361
    new-instance v2, Lcom/kingroot/kinguser/axd$3;

    invoke-direct {v2, p0}, Lcom/kingroot/kinguser/axd$3;-><init>(Lcom/kingroot/kinguser/axd;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 368
    return-object v1

    .line 357
    :cond_0
    new-instance v2, Lcom/kingroot/kinguser/agd;

    iget-object v3, p0, Lcom/kingroot/kinguser/axd;->ahM:Ljava/util/List;

    invoke-direct {v2, v3, p0, v4, v4}, Lcom/kingroot/kinguser/agd;-><init>(Ljava/util/List;Lcom/kingroot/kinguser/agd$b;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;)V

    iput-object v2, p0, Lcom/kingroot/kinguser/axd;->aXI:Lcom/kingroot/kinguser/agd;

    goto :goto_0
.end method

.method protected oO()Lcom/kingroot/kinguser/yp;
    .locals 3

    .prologue
    .line 105
    new-instance v0, Lcom/kingroot/kinguser/ada;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/axd;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/axd;->mTitle:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/kingroot/kinguser/ada;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 143
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/ans;->onCreate(Landroid/os/Bundle;)V

    .line 145
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axd;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 146
    if-nez v1, :cond_1

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 148
    if-nez v0, :cond_2

    .line 149
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 153
    :cond_2
    const-string v2, "def_setting_info"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kingroot/kinguser/axd;->mTitle:Ljava/lang/String;

    .line 154
    const-string v2, "default_item_id"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/kingroot/kinguser/axd;->aXE:I

    .line 155
    const-string v2, "default_item_recommend_app_id"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    iput-object v0, p0, Lcom/kingroot/kinguser/axd;->aXF:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    .line 156
    iget-object v0, p0, Lcom/kingroot/kinguser/axd;->mTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lcom/kingroot/kinguser/axd;->aXE:I

    if-ne v0, v3, :cond_4

    .line 157
    :cond_3
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 162
    :cond_4
    iget-object v0, p0, Lcom/kingroot/kinguser/axd;->aXF:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    if-eqz v0, :cond_0

    .line 163
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    iget-object v1, p0, Lcom/kingroot/kinguser/axd;->aXF:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;-><init>(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axd;->aAX:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/kingroot/kinguser/axd;->TO()V

    .line 124
    invoke-super {p0}, Lcom/kingroot/kinguser/ans;->onDestroy()V

    .line 125
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    .line 170
    invoke-super {p0}, Lcom/kingroot/kinguser/ans;->onResume()V

    .line 171
    iget-object v0, p0, Lcom/kingroot/kinguser/axd;->aAX:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    if-eqz v0, :cond_0

    .line 172
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    sget-object v2, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v3, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    const/4 v4, 0x0

    new-instance v5, Lcom/kingroot/kinguser/axd$1;

    invoke-direct {v5, p0}, Lcom/kingroot/kinguser/axd$1;-><init>(Lcom/kingroot/kinguser/axd;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 189
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 129
    invoke-super {p0}, Lcom/kingroot/kinguser/ans;->onStart()V

    .line 130
    invoke-direct {p0}, Lcom/kingroot/kinguser/axd;->TM()V

    .line 131
    iget-object v0, p0, Lcom/kingroot/kinguser/axd;->aXI:Lcom/kingroot/kinguser/agd;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/agd;->notifyDataSetChanged()V

    .line 132
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 136
    invoke-static {}, Lcom/kingroot/kinguser/amz;->II()Lcom/kingroot/kinguser/amz;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/axd;->awu:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/amz;->a(Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;)V

    .line 137
    invoke-static {}, Lcom/kingroot/kinguser/aso;->Ol()Lcom/kingroot/kinguser/aso;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/axd;->akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aso;->a(Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;)V

    .line 138
    invoke-super {p0}, Lcom/kingroot/kinguser/ans;->onStop()V

    .line 139
    return-void
.end method
