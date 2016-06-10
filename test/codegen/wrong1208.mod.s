##################################################
# test
#

    #-----------------------------------------
    # text section
    #
    .text
    .align 4

    # entry point and pre-defined functions
    .global main
    .extern DIM
    .extern DOFS
    .extern ReadInt
    .extern WriteInt
    .extern WriteStr
    .extern WriteChar
    .extern WriteLn

    # scope dummyINTfunc
dummyINTfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyINTfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyCHARfunc
dummyCHARfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyCHARfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyBOOLfunc
dummyBOOLfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyBOOLfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyProcedure
dummyProcedure:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyProcedure_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f0
f0:
    # stack offsets:
    #    -16(%ebp)   4  [ $t37      <int> %ebp-16 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 31 of <array 60 of <array 96 of <array 24 of <array 94 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 80 of <array 72 of <array 55 of <array 38 of <array 61 of <int>>>>>>> %ebp+20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $4, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 0(%esp)          

    # function body
    movl    $97, %eax               #   0:     return 97
    jmp     l_f0_exit              
    jmp     l_f0_3_if_false         #   1:     goto   3_if_false
    movl    $1, %eax                #   2:     if     1 # 1 goto 8_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_8_if_true         
    jmp     l_f0_9_if_false         #   3:     goto   9_if_false
l_f0_8_if_true:
    jmp     l_f0_7                  #   5:     goto   7
l_f0_9_if_false:
l_f0_7:
    jmp     l_f0_4                  #   8:     goto   4
l_f0_4:
    jmp     l_f0_1                  #  10:     goto   1
l_f0_3_if_false:
l_f0_1:
l_f0_12_while_cond:
    call    ReadInt                 #  14:     call   t37 <- ReadInt
    movl    %eax, -16(%ebp)        
l_f0_16_while_cond:
    movl    $0, %eax                #  16:     if     0 = 1 goto 17_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_17_while_body     
    jmp     l_f0_15                 #  17:     goto   15
l_f0_17_while_body:
    jmp     l_f0_16_while_cond      #  19:     goto   16_while_cond
l_f0_15:
    movl    $99, %eax               #  21:     assign v1 <- 99
    movb    %al, 8(%ebp)           
    movl    $1, %eax                #  22:     if     1 = 1 goto 21_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_21_if_true        
    jmp     l_f0_22_if_false        #  23:     goto   22_if_false
l_f0_21_if_true:
    jmp     l_f0_20                 #  25:     goto   20
l_f0_22_if_false:
l_f0_20:
    movl    $97, %eax               #  28:     return 97
    jmp     l_f0_exit              
    call    WriteLn                 #  29:     call   WriteLn
    movl    $100, %eax              #  30:     return 100
    jmp     l_f0_exit              
    movl    $98, %eax               #  31:     return 98
    jmp     l_f0_exit              
    jmp     l_f0_12_while_cond      #  32:     goto   12_while_cond

l_f0_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t37      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t38      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t39      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t40      <ptr(4) to <array 80 of <array 72 of <array 55 of <array 38 of <array 61 of <int>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t41      <ptr(4) to <array 31 of <array 60 of <array 96 of <array 24 of <array 94 of <bool>>>>>>> %ebp-32 ]
    #    -33(%ebp)   1  [ $t42      <char> %ebp-33 ]
    #    -40(%ebp)   4  [ $t43      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t44      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t45      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t46      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t47      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t48      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t49      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t50      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t51      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t52      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t53      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t54      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t55      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t56      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t57      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t58      <int> %ebp-100 ]
    #   -101(%ebp)   1  [ $t59      <char> %ebp-101 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 41 of <array 84 of <array 67 of <array 8 of <array 73 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 34 of <array 35 of <array 79 of <array 58 of <array 84 of <bool>>>>>>> %ebp+20 ]
    #   -402831488(%ebp)  402831384  [ $v5       <array 31 of <array 60 of <array 96 of <array 24 of <array 94 of <bool>>>>>> %ebp-402831488 ]
    #   954766184(%ebp)  -1357597672  [ $v6       <array 80 of <array 72 of <array 55 of <array 38 of <array 61 of <int>>>>>> %ebp+954766184 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $-954766196, %esp       # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $-238691549, %ecx      
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-402831488(%ebp)     # local array 'v5': 5 dimensions
    movl    $31,-402831484(%ebp)    #   dimension 1: 31 elements
    movl    $60,-402831480(%ebp)    #   dimension 2: 60 elements
    movl    $96,-402831476(%ebp)    #   dimension 3: 96 elements
    movl    $24,-402831472(%ebp)    #   dimension 4: 24 elements
    movl    $94,-402831468(%ebp)    #   dimension 5: 94 elements
    movl    $5,954766184(%ebp)      # local array 'v6': 5 dimensions
    movl    $80,954766188(%ebp)     #   dimension 1: 80 elements
    movl    $72,954766192(%ebp)     #   dimension 2: 72 elements
    movl    $55,954766196(%ebp)     #   dimension 3: 55 elements
    movl    $38,954766200(%ebp)     #   dimension 4: 38 elements
    movl    $61,954766204(%ebp)     #   dimension 5: 61 elements

    # function body
    movl    $26838, %eax            #   0:     div    t37 <- 26838, 26354
    movl    $26354, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     div    t38 <- t37, 12340
    movl    $12340, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     div    t39 <- t38, 8304
    movl    $8304, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     assign v2 <- t39
    movl    %eax, 12(%ebp)         
    leal    954766184(%ebp), %eax   #   4:     &()    t40 <- v6
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   5:     param  3 <- t40
    pushl   %eax                   
    leal    -402831488(%ebp), %eax  #   6:     &()    t41 <- v5
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   7:     param  2 <- t41
    pushl   %eax                   
    movl    $99, %eax               #   8:     param  1 <- 99
    pushl   %eax                   
    movl    $97, %eax               #   9:     param  0 <- 97
    pushl   %eax                   
    call    f0                      #  10:     call   t42 <- f0
    addl    $16, %esp              
    movb    %al, -33(%ebp)         
    movl    $2, %eax                #  11:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #  12:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  13:     call   t43 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    $13375, %eax            #  14:     mul    t44 <- 13375, t43
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  15:     add    t45 <- t44, 21151
    movl    $21151, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $3, %eax                #  16:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  17:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  18:     call   t46 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  19:     mul    t47 <- t45, t46
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  20:     add    t48 <- t47, 86460
    movl    $86460, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $4, %eax                #  21:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  22:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  23:     call   t49 <- DIM
    addl    $8, %esp               
    movl    %eax, -64(%ebp)        
    movl    -60(%ebp), %eax         #  24:     mul    t50 <- t48, t49
    movl    -64(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  25:     add    t51 <- t50, 33026
    movl    $33026, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $5, %eax                #  26:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  27:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  28:     call   t52 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    -72(%ebp), %eax         #  29:     mul    t53 <- t51, t52
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  30:     add    t54 <- t53, 92144
    movl    $92144, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  31:     mul    t55 <- t54, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    16(%ebp), %eax          #  32:     param  0 <- v3
    pushl   %eax                   
    call    DOFS                    #  33:     call   t56 <- DOFS
    addl    $4, %esp               
    movl    %eax, -92(%ebp)        
    movl    -88(%ebp), %eax         #  34:     add    t57 <- t55, t56
    movl    -92(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    16(%ebp), %eax          #  35:     add    t58 <- v3, t57
    movl    -96(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movzbl  -33(%ebp), %eax         #  36:     assign @t58 <- t42
    movl    -100(%ebp), %edi       
    movb    %al, (%edi)            
    movl    $21388, %eax            #  37:     if     21388 # 10900 goto 6_if_true
    movl    $10900, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_6_if_true         
    jmp     l_f1_7_if_false         #  38:     goto   7_if_false
l_f1_6_if_true:
    jmp     l_f1_5                  #  40:     goto   5
l_f1_7_if_false:
l_f1_5:
    jmp     l_f1_11_if_false        #  43:     goto   11_if_false
    jmp     l_f1_9                  #  44:     goto   9
l_f1_11_if_false:
l_f1_9:
    call    dummyCHARfunc           #  47:     call   t59 <- dummyCHARfunc
    movb    %al, -101(%ebp)        
    jmp     l_f1_2                  #  48:     goto   2
l_f1_2:

l_f1_exit:
    # epilogue
    addl    $-954766196, %esp       # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t37      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t38      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t39      <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t40      <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t41      <bool> %ebp-26 ]
    #    -32(%ebp)   4  [ $t42      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t43      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t44      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t45      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t46      <int> %ebp-48 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 24 of <array 45 of <array 75 of <array 18 of <array 44 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 11 of <array 40 of <array 75 of <array 50 of <array 65 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 82 of <array 81 of <array 54 of <array 65 of <array 43 of <bool>>>>>>> %ebp+16 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $36, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $9, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $5724, %eax             #   0:     add    t37 <- 5724, 37572
    movl    $37572, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     sub    t38 <- t37, 88994
    movl    $88994, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     add    t39 <- t38, 71506
    movl    $71506, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     if     t39 <= 35554 goto 1
    movl    $35554, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_1                 
    jmp     l_f2_2                  #   4:     goto   2
l_f2_1:
    movl    $1, %eax                #   6:     assign t40 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f2_3                  #   7:     goto   3
l_f2_2:
    movl    $0, %eax                #   9:     assign t40 <- 0
    movb    %al, -25(%ebp)         
l_f2_3:
    movzbl  -25(%ebp), %eax         #  11:     return t40
    jmp     l_f2_exit              
    jmp     l_f2_10                 #  12:     goto   10
    jmp     l_f2_10                 #  13:     goto   10
    jmp     l_f2_6                  #  14:     goto   6
l_f2_10:
l_f2_6:
    movl    $1, %eax                #  17:     assign t41 <- 1
    movb    %al, -26(%ebp)         
    jmp     l_f2_8                  #  18:     goto   8
    movl    $0, %eax                #  19:     assign t41 <- 0
    movb    %al, -26(%ebp)         
l_f2_8:
    movzbl  -26(%ebp), %eax         #  21:     return t41
    jmp     l_f2_exit              
l_f2_16_while_cond:
    movl    $14982, %eax            #  23:     div    t42 <- 14982, 9702
    movl    $9702, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  24:     div    t43 <- t42, 50346
    movl    $50346, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  25:     sub    t44 <- t43, 77264
    movl    $77264, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  26:     add    t45 <- t44, 24681
    movl    $24681, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  27:     add    t46 <- t45, 84197
    movl    $84197, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $17802, %eax            #  28:     if     17802 = t46 goto 17_while_body
    movl    -48(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f2_17_while_body     
    jmp     l_f2_15                 #  29:     goto   15
l_f2_17_while_body:
    jmp     l_f2_16_while_cond      #  31:     goto   16_while_cond
l_f2_15:

l_f2_exit:
    # epilogue
    addl    $36, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 80 of <array 72 of <array 55 of <array 38 of <array 61 of <int>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t10      <ptr(4) to <array 31 of <array 60 of <array 96 of <array 24 of <array 94 of <bool>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t11      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t12      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t13      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t14      <ptr(4) to <array 31 of <array 60 of <array 96 of <array 24 of <array 94 of <bool>>>>>>> %ebp-40 ]
    #    -44(%ebp)   4  [ $t15      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t16      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t17      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t18      <ptr(4) to <array 31 of <array 60 of <array 96 of <array 24 of <array 94 of <bool>>>>>>> %ebp-56 ]
    #    -60(%ebp)   4  [ $t19      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t2       <ptr(4) to <array 31 of <array 60 of <array 96 of <array 24 of <array 94 of <bool>>>>>>> %ebp-64 ]
    #    -68(%ebp)   4  [ $t20      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t21      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t22      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t23      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t24      <ptr(4) to <array 31 of <array 60 of <array 96 of <array 24 of <array 94 of <bool>>>>>>> %ebp-84 ]
    #    -88(%ebp)   4  [ $t25      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t26      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t27      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t28      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t29      <ptr(4) to <array 31 of <array 60 of <array 96 of <array 24 of <array 94 of <bool>>>>>>> %ebp-104 ]
    #   -105(%ebp)   1  [ $t3       <char> %ebp-105 ]
    #   -112(%ebp)   4  [ $t30      <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t31      <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t32      <int> %ebp-120 ]
    #   -124(%ebp)   4  [ $t33      <ptr(4) to <array 82 of <array 81 of <array 54 of <array 65 of <array 43 of <bool>>>>>>> %ebp-124 ]
    #   -128(%ebp)   4  [ $t34      <ptr(4) to <array 11 of <array 40 of <array 75 of <array 50 of <array 65 of <bool>>>>>>> %ebp-128 ]
    #   -132(%ebp)   4  [ $t35      <ptr(4) to <array 24 of <array 45 of <array 75 of <array 18 of <array 44 of <char>>>>>>> %ebp-132 ]
    #   -133(%ebp)   1  [ $t36      <bool> %ebp-133 ]
    #   -140(%ebp)   4  [ $t4       <ptr(4) to <array 80 of <array 72 of <array 55 of <array 38 of <array 61 of <int>>>>>>> %ebp-140 ]
    #   -144(%ebp)   4  [ $t5       <ptr(4) to <array 31 of <array 60 of <array 96 of <array 24 of <array 94 of <bool>>>>>>> %ebp-144 ]
    #   -145(%ebp)   1  [ $t6       <char> %ebp-145 ]
    #   -146(%ebp)   1  [ $t7       <char> %ebp-146 ]
    #   -147(%ebp)   1  [ $t8       <bool> %ebp-147 ]
    #   -152(%ebp)   4  [ $t9       <ptr(4) to <array 31 of <array 60 of <array 96 of <array 24 of <array 94 of <bool>>>>>>> %ebp-152 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $140, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $35, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_test_1_while_cond:
    jmp     l_test_4                #   1:     goto   4
    jmp     l_test_4                #   2:     goto   4
    jmp     l_test_5                #   3:     goto   5
l_test_4:
    movl    $1, %eax                #   5:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_6                #   6:     goto   6
l_test_5:
    movl    $0, %eax                #   8:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_6:
    movl    $1, %eax                #  10:     if     1 # t0 goto 2_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_test_2_while_body    
    jmp     l_test_0                #  11:     goto   0
l_test_2_while_body:
    movl    $76367, %eax            #  13:     assign v0 <- 76367
    movl    %eax, v0               
    movl    $55798, %eax            #  14:     assign v0 <- 55798
    movl    %eax, v0               
    jmp     l_test_1_while_cond     #  15:     goto   1_while_cond
l_test_0:
    jmp     l_test_13_if_false      #  17:     goto   13_if_false
l_test_15_while_cond:
    jmp     l_test_15_while_cond    #  19:     goto   15_while_cond
    movl    $67867, %eax            #  20:     param  0 <- 67867
    pushl   %eax                   
    call    WriteInt                #  21:     call   WriteInt
    addl    $4, %esp               
    jmp     l_test_exit            
    jmp     l_test_11               #  23:     goto   11
l_test_13_if_false:
l_test_11:
    leal    v2, %eax                #  26:     &()    t1 <- v2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  27:     param  3 <- t1
    pushl   %eax                   
    leal    v1, %eax                #  28:     &()    t2 <- v1
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  29:     param  2 <- t2
    pushl   %eax                   
    call    dummyCHARfunc           #  30:     call   t3 <- dummyCHARfunc
    movb    %al, -105(%ebp)        
    movzbl  -105(%ebp), %eax        #  31:     param  1 <- t3
    pushl   %eax                   
    leal    v2, %eax                #  32:     &()    t4 <- v2
    movl    %eax, -140(%ebp)       
    movl    -140(%ebp), %eax        #  33:     param  3 <- t4
    pushl   %eax                   
    leal    v1, %eax                #  34:     &()    t5 <- v1
    movl    %eax, -144(%ebp)       
    movl    -144(%ebp), %eax        #  35:     param  2 <- t5
    pushl   %eax                   
    movl    $99, %eax               #  36:     param  1 <- 99
    pushl   %eax                   
    movl    $97, %eax               #  37:     param  0 <- 97
    pushl   %eax                   
    call    f0                      #  38:     call   t6 <- f0
    addl    $16, %esp              
    movb    %al, -145(%ebp)        
    movzbl  -145(%ebp), %eax        #  39:     param  0 <- t6
    pushl   %eax                   
    call    f0                      #  40:     call   t7 <- f0
    addl    $16, %esp              
    movb    %al, -146(%ebp)        
    jmp     l_test_22               #  41:     goto   22
    movl    $1, %eax                #  42:     assign t8 <- 1
    movb    %al, -147(%ebp)        
    jmp     l_test_23               #  43:     goto   23
l_test_22:
    movl    $0, %eax                #  45:     assign t8 <- 0
    movb    %al, -147(%ebp)        
l_test_23:
    leal    v1, %eax                #  47:     &()    t9 <- v1
    movl    %eax, -152(%ebp)       
    movl    $2, %eax                #  48:     param  1 <- 2
    pushl   %eax                   
    leal    v1, %eax                #  49:     &()    t10 <- v1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  50:     param  0 <- t10
    pushl   %eax                   
    call    DIM                     #  51:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    $47738, %eax            #  52:     mul    t12 <- 47738, t11
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  53:     add    t13 <- t12, 61289
    movl    $61289, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $3, %eax                #  54:     param  1 <- 3
    pushl   %eax                   
    leal    v1, %eax                #  55:     &()    t14 <- v1
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  56:     param  0 <- t14
    pushl   %eax                   
    call    DIM                     #  57:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -36(%ebp), %eax         #  58:     mul    t16 <- t13, t15
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  59:     add    t17 <- t16, 72932
    movl    $72932, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $4, %eax                #  60:     param  1 <- 4
    pushl   %eax                   
    leal    v1, %eax                #  61:     &()    t18 <- v1
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  62:     param  0 <- t18
    pushl   %eax                   
    call    DIM                     #  63:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    -52(%ebp), %eax         #  64:     mul    t20 <- t17, t19
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    $55554, %eax            #  65:     add    t21 <- 55554, 38956
    movl    $38956, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  66:     sub    t22 <- t21, 12515
    movl    $12515, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    -68(%ebp), %eax         #  67:     add    t23 <- t20, t22
    movl    -76(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $5, %eax                #  68:     param  1 <- 5
    pushl   %eax                   
    leal    v1, %eax                #  69:     &()    t24 <- v1
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  70:     param  0 <- t24
    pushl   %eax                   
    call    DIM                     #  71:     call   t25 <- DIM
    addl    $8, %esp               
    movl    %eax, -88(%ebp)        
    movl    -80(%ebp), %eax         #  72:     mul    t26 <- t23, t25
    movl    -88(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  73:     add    t27 <- t26, 59468
    movl    $59468, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #  74:     mul    t28 <- t27, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -100(%ebp)       
    leal    v1, %eax                #  75:     &()    t29 <- v1
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #  76:     param  0 <- t29
    pushl   %eax                   
    call    DOFS                    #  77:     call   t30 <- DOFS
    addl    $4, %esp               
    movl    %eax, -112(%ebp)       
    movl    -100(%ebp), %eax        #  78:     add    t31 <- t28, t30
    movl    -112(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -116(%ebp)       
    movl    -152(%ebp), %eax        #  79:     add    t32 <- t9, t31
    movl    -116(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -120(%ebp)       
    movzbl  -147(%ebp), %eax        #  80:     assign @t32 <- t8
    movl    -120(%ebp), %edi       
    movb    %al, (%edi)            
l_test_27_while_cond:
    leal    v6, %eax                #  82:     &()    t33 <- v6
    movl    %eax, -124(%ebp)       
    movl    -124(%ebp), %eax        #  83:     param  2 <- t33
    pushl   %eax                   
    leal    v5, %eax                #  84:     &()    t34 <- v5
    movl    %eax, -128(%ebp)       
    movl    -128(%ebp), %eax        #  85:     param  1 <- t34
    pushl   %eax                   
    leal    v4, %eax                #  86:     &()    t35 <- v4
    movl    %eax, -132(%ebp)       
    movl    -132(%ebp), %eax        #  87:     param  0 <- t35
    pushl   %eax                   
    call    f2                      #  88:     call   t36 <- f2
    addl    $12, %esp              
    movb    %al, -133(%ebp)        
    movzbl  -133(%ebp), %eax        #  89:     if     t36 = 1 goto 28_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_28_while_body   
    jmp     l_test_26               #  90:     goto   26
l_test_28_while_body:
    jmp     l_test_exit            
    jmp     l_test_27_while_cond    #  93:     goto   27_while_cond
l_test_26:

l_test_exit:
    # epilogue
    addl    $140, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # end of text section
    #-----------------------------------------

    #-----------------------------------------
    # global data section
    #
    .data
    .align 4

    # scope: test
v0:                                 # <int>
    .skip    4
v1:                                 # <array 31 of <array 60 of <array 96 of <array 24 of <array 94 of <bool>>>>>>
    .long    5
    .long   31
    .long   60
    .long   96
    .long   24
    .long   94
    .skip 402831360
v2:                                 # <array 80 of <array 72 of <array 55 of <array 38 of <array 61 of <int>>>>>>
    .long    5
    .long   80
    .long   72
    .long   55
    .long   38
    .long   61
    .skip -1357597696
v3:                                 # <bool>
    .skip    1
    .align   4
v4:                                 # <array 24 of <array 45 of <array 75 of <array 18 of <array 44 of <char>>>>>>
    .long    5
    .long   24
    .long   45
    .long   75
    .long   18
    .long   44
    .skip 64152000
v5:                                 # <array 11 of <array 40 of <array 75 of <array 50 of <array 65 of <bool>>>>>>
    .long    5
    .long   11
    .long   40
    .long   75
    .long   50
    .long   65
    .skip 107250000
v6:                                 # <array 82 of <array 81 of <array 54 of <array 65 of <array 43 of <bool>>>>>>
    .long    5
    .long   82
    .long   81
    .long   54
    .long   65
    .long   43
    .skip 1002477060








    # end of global data section
    #-----------------------------------------

    .end
##################################################
