.class Lcom/kingroot/kinguser/gamebox/foreground/GameBoxShortcutActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/gamebox/foreground/GameBoxShortcutActivity;->Pp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aOW:Lcom/kingroot/kinguser/gamebox/foreground/GameBoxShortcutActivity;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/gamebox/foreground/GameBoxShortcutActivity;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxShortcutActivity$1;->aOW:Lcom/kingroot/kinguser/gamebox/foreground/GameBoxShortcutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 101
    invoke-static {}, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxGuideActivityDialog;->Pd()V

    .line 102
    return-void
.end method
