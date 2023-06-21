.class public Lcom/kingroot/kinguser/ala$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/ala;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final packageName:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final resolveInfo:Landroid/content/pm/ResolveInfo;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/pm/ResolveInfo;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/pm/ResolveInfo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    iput-object p1, p0, Lcom/kingroot/kinguser/ala$a;->packageName:Ljava/lang/String;

    .line 242
    iput-object p2, p0, Lcom/kingroot/kinguser/ala$a;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 243
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 247
    instance-of v1, p1, Lcom/kingroot/kinguser/ala$a;

    if-nez v1, :cond_1

    .line 268
    :cond_0
    :goto_0
    return v0

    .line 250
    :cond_1
    check-cast p1, Lcom/kingroot/kinguser/ala$a;

    .line 251
    iget-object v1, p0, Lcom/kingroot/kinguser/ala$a;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/kingroot/kinguser/ala$a;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 254
    iget-object v1, p0, Lcom/kingroot/kinguser/ala$a;->resolveInfo:Landroid/content/pm/ResolveInfo;

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/kingroot/kinguser/ala$a;->resolveInfo:Landroid/content/pm/ResolveInfo;

    if-nez v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    .line 256
    :cond_2
    iget-object v1, p0, Lcom/kingroot/kinguser/ala$a;->resolveInfo:Landroid/content/pm/ResolveInfo;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/kingroot/kinguser/ala$a;->resolveInfo:Landroid/content/pm/ResolveInfo;

    if-eqz v1, :cond_0

    .line 258
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 259
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 260
    iget-object v3, p0, Lcom/kingroot/kinguser/ala$a;->resolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v3, v1, v0}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 261
    iget-object v3, p1, Lcom/kingroot/kinguser/ala$a;->resolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v3, v2, v0}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 262
    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    invoke-virtual {v2}, Landroid/os/Parcel;->marshall()[B

    move-result-object v3

    invoke-static {v0, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    .line 263
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 264
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    goto :goto_0
.end method

.method public getIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 289
    const/4 v0, 0x0

    .line 290
    iget-object v1, p0, Lcom/kingroot/kinguser/ala$a;->resolveInfo:Landroid/content/pm/ResolveInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kingroot/kinguser/ala$a;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_0

    .line 292
    :try_start_0
    iget-object v1, p0, Lcom/kingroot/kinguser/ala$a;->resolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 298
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 300
    :try_start_1
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/ala$a;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zh;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 306
    :cond_1
    :goto_1
    return-object v0

    .line 301
    :catch_0
    move-exception v1

    goto :goto_1

    .line 293
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 272
    const/4 v0, 0x0

    .line 273
    iget-object v1, p0, Lcom/kingroot/kinguser/ala$a;->resolveInfo:Landroid/content/pm/ResolveInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kingroot/kinguser/ala$a;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_0

    .line 274
    iget-object v0, p0, Lcom/kingroot/kinguser/ala$a;->resolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 277
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 278
    iget-object v0, p0, Lcom/kingroot/kinguser/ala$a;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/kingroot/kinguser/bgh;->jf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 281
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 282
    iget-object v0, p0, Lcom/kingroot/kinguser/ala$a;->packageName:Ljava/lang/String;

    .line 285
    :cond_2
    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 311
    iget-object v0, p0, Lcom/kingroot/kinguser/ala$a;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 312
    iget-object v1, p0, Lcom/kingroot/kinguser/ala$a;->resolveInfo:Landroid/content/pm/ResolveInfo;

    if-eqz v1, :cond_0

    .line 313
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 314
    iget-object v2, p0, Lcom/kingroot/kinguser/ala$a;->resolveInfo:Landroid/content/pm/ResolveInfo;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 315
    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v0, v2

    .line 316
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 319
    :cond_0
    return v0
.end method
