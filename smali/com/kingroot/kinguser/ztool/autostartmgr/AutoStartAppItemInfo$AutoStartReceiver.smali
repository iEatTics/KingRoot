.class public final Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo$AutoStartReceiver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/rr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AutoStartReceiver"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6957a7e8108a1208L


# instance fields
.field private mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo$AutoStartAction;",
            ">;"
        }
    .end annotation
.end field

.field private final mEnabled:Z

.field private final mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo$AutoStartReceiver;->mName:Ljava/lang/String;

    .line 96
    iput-boolean p2, p0, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo$AutoStartReceiver;->mEnabled:Z

    .line 97
    return-void
.end method

.method static synthetic b(Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo$AutoStartReceiver;)Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo$AutoStartReceiver;->mEnabled:Z

    return v0
.end method

.method private d(Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo$AutoStartAction;)V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo$AutoStartReceiver;->mActions:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo$AutoStartReceiver;->mActions:Ljava/util/ArrayList;

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo$AutoStartReceiver;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    return-void
.end method


# virtual methods
.method public aN(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo$AutoStartReceiver;->lW(Ljava/lang/String;)Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo$AutoStartAction;

    move-result-object v0

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo$AutoStartAction;

    invoke-direct {v0, p1, p2}, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo$AutoStartAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo$AutoStartReceiver;->d(Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo$AutoStartAction;)V

    .line 104
    :cond_0
    return-void
.end method

.method public adz()I
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo$AutoStartReceiver;->mActions:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo$AutoStartReceiver;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo$AutoStartAction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo$AutoStartReceiver;->mActions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo$AutoStartReceiver;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public lW(Ljava/lang/String;)Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo$AutoStartAction;
    .locals 3

    .prologue
    .line 115
    iget-object v0, p0, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo$AutoStartReceiver;->mActions:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo$AutoStartReceiver;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo$AutoStartAction;

    .line 117
    invoke-static {v0}, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo$AutoStartAction;->b(Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo$AutoStartAction;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 123
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
