.class Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->a(Ljava/lang/String;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic brP:Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;

.field final synthetic brQ:I


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;I)V
    .locals 0

    .prologue
    .line 637
    iput-object p1, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui$9;->brP:Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;

    iput p2, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui$9;->brQ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 640
    iget-object v0, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui$9;->brP:Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;

    iget v1, p0, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui$9;->brQ:I

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;->d(Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;I)V

    .line 641
    return-void
.end method
