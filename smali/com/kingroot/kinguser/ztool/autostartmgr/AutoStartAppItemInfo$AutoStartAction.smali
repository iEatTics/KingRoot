.class final Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo$AutoStartAction;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/rr;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AutoStartAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/kingroot/kinguser/rr;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo$AutoStartAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x7fa8e2460f70812fL


# instance fields
.field private final mDescription:Ljava/lang/String;

.field private final mName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo$AutoStartAction;->mName:Ljava/lang/String;

    .line 71
    iput-object p2, p0, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo$AutoStartAction;->mDescription:Ljava/lang/String;

    .line 72
    return-void
.end method

.method static synthetic b(Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo$AutoStartAction;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo$AutoStartAction;->mName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo$AutoStartAction;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo$AutoStartAction;->mDescription:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo$AutoStartAction;)I
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo$AutoStartAction;->mDescription:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p1, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo$AutoStartAction;->mDescription:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 61
    check-cast p1, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo$AutoStartAction;

    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo$AutoStartAction;->a(Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo$AutoStartAction;)I

    move-result v0

    return v0
.end method
