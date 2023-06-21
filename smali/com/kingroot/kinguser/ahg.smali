.class public Lcom/kingroot/kinguser/ahg;
.super Lcom/kingroot/kinguser/uo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/ahg$a;,
        Lcom/kingroot/kinguser/ahg$b;
    }
.end annotation


# static fields
.field private static apk:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/ahg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lcom/kingroot/kinguser/ahg$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/ahg$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/ahg;->apk:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/kingroot/kinguser/uo;-><init>()V

    .line 55
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/ahg$1;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/kingroot/kinguser/ahg;-><init>()V

    return-void
.end method

.method public static a(ILcom/kingroot/kinguser/ala$a;)Z
    .locals 5
    .param p1    # Lcom/kingroot/kinguser/ala$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 125
    packed-switch p0, :pswitch_data_0

    .line 180
    :cond_0
    :goto_0
    :pswitch_0
    return v1

    .line 127
    :pswitch_1
    iget-object v0, p1, Lcom/kingroot/kinguser/ala$a;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/kingroot/kinguser/ahg;->fO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 133
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/system/bin/ime enable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/system/bin/ime set "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/kingroot/kinguser/abc;->runRootCommands(Ljava/util/List;)Ljava/util/List;

    .line 139
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "default_input_method"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 153
    :pswitch_2
    iget-object v0, p1, Lcom/kingroot/kinguser/ala$a;->resolveInfo:Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/kingroot/kinguser/ala$a;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v0, :cond_2

    :cond_1
    const-string v0, ""

    .line 157
    :goto_1
    invoke-static {p0}, Lcom/kingroot/kinguser/ala;->eW(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/kingroot/kinguser/ala$a;->packageName:Ljava/lang/String;

    .line 159
    invoke-static {v0}, Lcom/kingroot/kinguser/cgx;->nl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 156
    invoke-static {v2, v3, v4}, Lcom/kingroot/kinguser/aja;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 160
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/kingroot/kinguser/abc;->el(Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/common/utils/system/VTCmdResult;->success()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 165
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 172
    invoke-static {p0}, Lcom/kingroot/kinguser/ahg;->dm(I)Lcom/kingroot/kinguser/ahg$a;

    move-result-object v0

    .line 173
    iget-object v2, p1, Lcom/kingroot/kinguser/ala$a;->packageName:Ljava/lang/String;

    iget-object v3, v0, Lcom/kingroot/kinguser/ahg$a;->apm:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v0, v0, Lcom/kingroot/kinguser/ahg$a;->apn:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_3
    move v1, v0

    goto/16 :goto_0

    .line 153
    :cond_2
    iget-object v0, p1, Lcom/kingroot/kinguser/ala$a;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    goto :goto_1

    :cond_3
    move v0, v1

    .line 173
    goto :goto_3

    .line 176
    :cond_4
    invoke-static {p0}, Lcom/kingroot/kinguser/ala;->eZ(I)Lcom/kingroot/kinguser/ala$a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/kingroot/kinguser/ala$a;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_0

    .line 166
    :catch_0
    move-exception v2

    goto :goto_2

    .line 125
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

.method static a(Lcom/kingroot/kinguser/advance/model/DefaultSettingInfo;)Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 273
    if-nez p0, :cond_1

    .line 315
    :cond_0
    :goto_0
    return v2

    .line 276
    :cond_1
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    .line 277
    iget-object v3, p0, Lcom/kingroot/kinguser/advance/model/DefaultSettingInfo;->apy:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    .line 278
    if-eqz v3, :cond_0

    .line 280
    iget v1, p0, Lcom/kingroot/kinguser/advance/model/DefaultSettingInfo;->type:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_3

    .line 281
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "default_input_method"

    invoke-static {v1, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 283
    const-string v4, "input_method"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 284
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v0

    .line 286
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 287
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 289
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v3, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->pkgName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    goto :goto_0

    .line 293
    :cond_3
    iget v0, p0, Lcom/kingroot/kinguser/advance/model/DefaultSettingInfo;->type:I

    invoke-static {v0}, Lcom/kingroot/kinguser/ala;->eZ(I)Lcom/kingroot/kinguser/ala$a;

    move-result-object v4

    .line 294
    iget v0, p0, Lcom/kingroot/kinguser/advance/model/DefaultSettingInfo;->type:I

    invoke-static {v0}, Lcom/kingroot/kinguser/ala;->fa(I)Ljava/util/Collection;

    move-result-object v0

    .line 297
    const/4 v1, 0x0

    .line 298
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ala$a;

    .line 299
    iget-object v6, v0, Lcom/kingroot/kinguser/ala$a;->packageName:Ljava/lang/String;

    iget-object v7, v3, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->pkgName:Ljava/lang/String;

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 300
    if-nez v1, :cond_5

    :cond_4
    :goto_2
    move-object v1, v0

    .line 310
    goto :goto_1

    .line 303
    :cond_5
    iget-object v6, v1, Lcom/kingroot/kinguser/ala$a;->resolveInfo:Landroid/content/pm/ResolveInfo;

    if-eqz v6, :cond_6

    iget-object v6, v0, Lcom/kingroot/kinguser/ala$a;->resolveInfo:Landroid/content/pm/ResolveInfo;

    if-eqz v6, :cond_6

    iget-object v6, v0, Lcom/kingroot/kinguser/ala$a;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget v6, v6, Landroid/content/pm/ResolveInfo;->priority:I

    iget-object v7, v1, Lcom/kingroot/kinguser/ala$a;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget v7, v7, Landroid/content/pm/ResolveInfo;->priority:I

    if-gt v6, v7, :cond_4

    :cond_6
    move-object v0, v1

    goto :goto_2

    .line 312
    :cond_7
    if-eqz v1, :cond_8

    invoke-virtual {v1, v4}, Lcom/kingroot/kinguser/ala$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_3
    move v2, v0

    goto/16 :goto_0

    :cond_8
    move v0, v2

    goto :goto_3
.end method

.method public static dm(I)Lcom/kingroot/kinguser/ahg$a;
    .locals 8

    .prologue
    .line 185
    new-instance v2, Lcom/kingroot/kinguser/ahg$a;

    invoke-direct {v2}, Lcom/kingroot/kinguser/ahg$a;-><init>()V

    .line 186
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v0

    .line 187
    packed-switch p0, :pswitch_data_0

    .line 251
    :goto_0
    :pswitch_0
    return-object v2

    .line 189
    :pswitch_1
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "default_input_method"

    invoke-static {v1, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 191
    const-string v3, "input_method"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 192
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v3

    .line 193
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 194
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 195
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/kingroot/kinguser/ahg$a;->apm:Ljava/lang/String;

    .line 196
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bgh;->jf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/kingroot/kinguser/ahg$a;->akM:Ljava/lang/String;

    .line 200
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    iput v0, v2, Lcom/kingroot/kinguser/ahg$a;->apl:I

    goto :goto_0

    .line 213
    :pswitch_2
    invoke-static {p0}, Lcom/kingroot/kinguser/ala;->eZ(I)Lcom/kingroot/kinguser/ala$a;

    move-result-object v3

    .line 215
    invoke-static {p0}, Lcom/kingroot/kinguser/ala;->fa(I)Ljava/util/Collection;

    move-result-object v4

    .line 216
    if-eqz v3, :cond_6

    .line 217
    const/4 v1, 0x0

    .line 218
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ala$a;

    .line 219
    iget-object v6, v0, Lcom/kingroot/kinguser/ala$a;->packageName:Ljava/lang/String;

    iget-object v7, v3, Lcom/kingroot/kinguser/ala$a;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 224
    if-nez v1, :cond_3

    move-object v1, v0

    .line 226
    :cond_3
    iget-object v6, v1, Lcom/kingroot/kinguser/ala$a;->resolveInfo:Landroid/content/pm/ResolveInfo;

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/kingroot/kinguser/ala$a;->resolveInfo:Landroid/content/pm/ResolveInfo;

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/kingroot/kinguser/ala$a;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget v6, v6, Landroid/content/pm/ResolveInfo;->priority:I

    iget-object v7, v1, Lcom/kingroot/kinguser/ala$a;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget v7, v7, Landroid/content/pm/ResolveInfo;->priority:I

    if-le v6, v7, :cond_4

    move-object v1, v0

    .line 232
    :cond_4
    iget-object v6, v2, Lcom/kingroot/kinguser/ahg$a;->apm:Ljava/lang/String;

    if-nez v6, :cond_2

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/ala$a;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 233
    iget-object v6, v0, Lcom/kingroot/kinguser/ala$a;->packageName:Ljava/lang/String;

    iput-object v6, v2, Lcom/kingroot/kinguser/ahg$a;->apm:Ljava/lang/String;

    .line 234
    invoke-virtual {v0}, Lcom/kingroot/kinguser/ala$a;->getName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/kingroot/kinguser/ahg$a;->akM:Ljava/lang/String;

    .line 238
    iget-object v6, v2, Lcom/kingroot/kinguser/ahg$a;->akM:Ljava/lang/String;

    if-nez v6, :cond_2

    iget-object v6, v0, Lcom/kingroot/kinguser/ala$a;->packageName:Ljava/lang/String;

    invoke-static {v6}, Lcom/kingroot/kinguser/ala;->ht(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 239
    iget-object v0, v0, Lcom/kingroot/kinguser/ala$a;->packageName:Ljava/lang/String;

    iput-object v0, v2, Lcom/kingroot/kinguser/ahg$a;->akM:Ljava/lang/String;

    goto :goto_1

    .line 243
    :cond_5
    invoke-virtual {v3, v1}, Lcom/kingroot/kinguser/ala$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v2, Lcom/kingroot/kinguser/ahg$a;->apn:Z

    .line 246
    :cond_6
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v0

    iput v0, v2, Lcom/kingroot/kinguser/ahg$a;->apl:I

    goto/16 :goto_0

    .line 187
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

.method private static fO(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 255
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 269
    :goto_0
    return-object v0

    .line 258
    :cond_0
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    .line 259
    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 260
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v0

    .line 262
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 263
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 265
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 269
    goto :goto_0
.end method

.method public static wT()Lcom/kingroot/kinguser/ahg;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/kingroot/kinguser/ahg;->apk:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ahg;

    return-object v0
.end method


# virtual methods
.method public kD()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/kingroot/kinguser/up;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    const-class v0, Lcom/kingroot/kinguser/ahg$b;

    return-object v0
.end method

.method public refresh()V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/ahg;->aX(I)V

    .line 89
    return-void
.end method

.method public wU()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/advance/model/DefaultSettingInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/ahg;->aY(I)Lcom/kingroot/common/ipc/IpcResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/common/ipc/IpcResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public wV()I
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/ahg;->aY(I)Lcom/kingroot/common/ipc/IpcResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/common/ipc/IpcResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 73
    if-nez v0, :cond_0

    .line 74
    const/4 v0, 0x0

    .line 76
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public wW()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/advance/model/DefaultSettingInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/ahg;->aY(I)Lcom/kingroot/common/ipc/IpcResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/common/ipc/IpcResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method
