.class public final enum Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum bmM:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$b;

.field public static final enum bmN:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$b;

.field private static final synthetic bmO:[Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 137
    new-instance v0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$b;

    const-string v1, "EXPANDED"

    invoke-direct {v0, v1, v2}, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$b;->bmM:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$b;

    .line 138
    new-instance v0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$b;

    const-string v1, "COLLAPSED"

    invoke-direct {v0, v1, v3}, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$b;->bmN:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$b;

    .line 136
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$b;

    sget-object v1, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$b;->bmM:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$b;->bmN:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$b;

    aput-object v1, v0, v3

    sput-object v0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$b;->bmO:[Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 136
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$b;
    .locals 1

    .prologue
    .line 136
    const-class v0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$b;

    return-object v0
.end method

.method public static values()[Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$b;
    .locals 1

    .prologue
    .line 136
    sget-object v0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$b;->bmO:[Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$b;

    invoke-virtual {v0}, [Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$b;

    return-object v0
.end method
