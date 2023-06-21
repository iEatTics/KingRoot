.class public Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;
.super Lcom/kingroot/kingmaster/toolbox/process/manager/PackageInfoBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo$AutoStartReceiver;,
        Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo$AutoStartAction;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x34b9ddb2cecb3428L


# instance fields
.field private mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAsUserWillEnabled:Z

.field private mBackgroundStartReceiverRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBootStartReceiverRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCurEnabled:I

.field private mEnabled:I

.field private mFlag:I

.field private mHasBackgroundStartEnabled:Z

.field private mHasBootStartEnabled:Z

.field private mReceivers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo$AutoStartReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private mType:I

.field private mUid:I


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 232
    invoke-direct {p0}, Lcom/kingroot/kingmaster/toolbox/process/manager/PackageInfoBase;-><init>()V

    .line 39
    iput-boolean v0, p0, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;->mHasBootStartEnabled:Z

    .line 42
    iput-boolean v0, p0, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;->mHasBackgroundStartEnabled:Z

    .line 45
    iput-boolean v0, p0, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;->mAsUserWillEnabled:Z

    .line 50
    iput v0, p0, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;->mFlag:I

    .line 233
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p1, p2

    :cond_0
    iput-object p1, p0, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;->mDisplayName:Ljava/lang/String;

    .line 234
    iput-object p2, p0, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;->mPackageName:Ljava/lang/String;

    .line 235
    iput p3, p0, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;->mUid:I

    .line 236
    return-void
.end method

.method public static h(Ljava/lang/String;Ljava/lang/String;I)Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;
    .locals 1

    .prologue
    .line 165
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    const/4 v0, 0x0

    .line 169
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;

    invoke-direct {v0, p0, p1, p2}, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo$AutoStartReceiver;)V
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;->mReceivers:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 264
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;->mReceivers:Ljava/util/ArrayList;

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;->mReceivers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    return-void
.end method

.method public adA()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo$AutoStartReceiver;",
            ">;"
        }
    .end annotation

    .prologue
    .line 259
    iget-object v0, p0, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;->mReceivers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public adB()I
    .locals 1

    .prologue
    .line 275
    iget v0, p0, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;->mCurEnabled:I

    return v0
.end method

.method public adC()I
    .locals 1

    .prologue
    .line 290
    iget v0, p0, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;->mEnabled:I

    return v0
.end method

.method public ady()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 251
    iget-object v0, p0, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;->mActions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public adz()I
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;->mActions:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public jj(I)V
    .locals 0

    .prologue
    .line 282
    iput p1, p0, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;->mCurEnabled:I

    .line 283
    return-void
.end method

.method public jk(I)V
    .locals 0

    .prologue
    .line 298
    iput p1, p0, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;->mEnabled:I

    .line 299
    return-void
.end method

.method public populate()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 302
    .line 303
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 305
    iget-object v0, p0, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;->mReceivers:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 306
    iget-object v0, p0, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;->mReceivers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo$AutoStartReceiver;

    .line 307
    invoke-static {v0}, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo$AutoStartReceiver;->b(Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo$AutoStartReceiver;)Z

    move-result v5

    or-int/2addr v1, v5

    .line 308
    invoke-virtual {v0}, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo$AutoStartReceiver;->adz()I

    move-result v5

    if-lez v5, :cond_0

    .line 309
    invoke-virtual {v0}, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo$AutoStartReceiver;->getActions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo$AutoStartAction;

    .line 310
    invoke-static {v0}, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo$AutoStartAction;->b(Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo$AutoStartAction;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 311
    invoke-static {v0}, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo$AutoStartAction;->b(Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo$AutoStartAction;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0}, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo$AutoStartAction;->c(Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo$AutoStartAction;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    move v1, v2

    .line 317
    :cond_3
    if-eqz v1, :cond_4

    .line 319
    :goto_1
    invoke-virtual {p0, v2}, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;->jk(I)V

    .line 320
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;->mActions:Ljava/util/ArrayList;

    .line 321
    return-void

    .line 317
    :cond_4
    const/4 v2, 0x1

    goto :goto_1
.end method
