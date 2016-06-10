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
    #    -13(%ebp)   1  [ $t31      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t32      <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t33      <bool> %ebp-15 ]
    #    -20(%ebp)   4  [ $t34      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t35      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t36      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t37      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t38      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t39      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t40      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t41      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t42      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t43      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t44      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t45      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t46      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t47      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t48      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t49      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t50      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t51      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t52      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t53      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t54      <int> %ebp-100 ]
    #   -101(%ebp)   1  [ $t55      <bool> %ebp-101 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 4 of <array 6 of <array 3 of <array 1 of <array 5 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 5 of <array 7 of <array 2 of <array 2 of <array 2 of <char>>>>>>> %ebp+16 ]
    #   -108(%ebp)   4  [ $v3       <int> %ebp-108 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $96, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $24, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    jmp     l_f0_6                  #   0:     goto   6
    jmp     l_f0_6                  #   1:     goto   6
    movl    $1, %eax                #   2:     assign t31 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_7                  #   3:     goto   7
l_f0_6:
    movl    $0, %eax                #   5:     assign t31 <- 0
    movb    %al, -13(%ebp)         
l_f0_7:
    movl    $1, %eax                #   7:     assign t32 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_11                 #   8:     goto   11
    movl    $0, %eax                #   9:     assign t32 <- 0
    movb    %al, -14(%ebp)         
l_f0_11:
    movzbl  -13(%ebp), %eax         #  11:     if     t31 # t32 goto 1
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f0_1                 
    jmp     l_f0_2                  #  12:     goto   2
l_f0_1:
    movl    $1, %eax                #  14:     assign t33 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f0_3                  #  15:     goto   3
l_f0_2:
    movl    $0, %eax                #  17:     assign t33 <- 0
    movb    %al, -15(%ebp)         
l_f0_3:
    movzbl  -15(%ebp), %eax         #  19:     return t33
    jmp     l_f0_exit              
    movl    $5161, %eax             #  20:     sub    t34 <- 5161, 71604
    movl    $71604, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  21:     add    t35 <- t34, 53198
    movl    $53198, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $2, %eax                #  22:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  23:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  24:     call   t36 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  25:     mul    t37 <- t35, t36
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  26:     add    t38 <- t37, 42252
    movl    $42252, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $3, %eax                #  27:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  28:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  29:     call   t39 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  30:     mul    t40 <- t38, t39
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    $51684, %eax            #  31:     sub    t41 <- 51684, 35186
    movl    $35186, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  32:     add    t42 <- t41, 40244
    movl    $40244, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  33:     sub    t43 <- t42, 15676
    movl    $15676, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -44(%ebp), %eax         #  34:     add    t44 <- t40, t43
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $4, %eax                #  35:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  36:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  37:     call   t45 <- DIM
    addl    $8, %esp               
    movl    %eax, -64(%ebp)        
    movl    -60(%ebp), %eax         #  38:     mul    t46 <- t44, t45
    movl    -64(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  39:     add    t47 <- t46, 87892
    movl    $87892, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $5, %eax                #  40:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  41:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  42:     call   t48 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    -72(%ebp), %eax         #  43:     mul    t49 <- t47, t48
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  44:     add    t50 <- t49, 15473
    movl    $15473, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  45:     mul    t51 <- t50, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    8(%ebp), %eax           #  46:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  47:     call   t52 <- DOFS
    addl    $4, %esp               
    movl    %eax, -92(%ebp)        
    movl    -88(%ebp), %eax         #  48:     add    t53 <- t51, t52
    movl    -92(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    8(%ebp), %eax           #  49:     add    t54 <- v0, t53
    movl    -96(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    $16113, %eax            #  50:     assign @t54 <- 16113
    movl    -100(%ebp), %edi       
    movl    %eax, (%edi)           
    movl    $97, %eax               #  51:     if     97 >= 99 goto 15
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_15                
    jmp     l_f0_16                 #  52:     goto   16
l_f0_15:
    movl    $1, %eax                #  54:     assign t55 <- 1
    movb    %al, -101(%ebp)        
    jmp     l_f0_17                 #  55:     goto   17
l_f0_16:
    movl    $0, %eax                #  57:     assign t55 <- 0
    movb    %al, -101(%ebp)        
l_f0_17:
    movzbl  -101(%ebp), %eax        #  59:     assign v1 <- t55
    movb    %al, 12(%ebp)          

l_f0_exit:
    # epilogue
    addl    $96, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t31      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t32      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t33      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t34      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t35      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t36      <int> %ebp-36 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 10 of <array 5 of <array 6 of <array 4 of <array 8 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 8 of <array 9 of <array 5 of <array 8 of <array 4 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <char> %ebp+20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $24, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $6, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $48586, %eax            #   0:     div    t31 <- 48586, 28802
    movl    $28802, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    call    dummyINTfunc            #   1:     call   t32 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #   2:     mul    t33 <- t31, t32
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     return t33
    jmp     l_f1_exit              
    movl    $34601, %eax            #   4:     div    t34 <- 34601, 57687
    movl    $57687, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    call    ReadInt                 #   5:     call   t35 <- ReadInt
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #   6:     div    t36 <- t34, t35
    movl    -32(%ebp), %ebx        
    cdq                            
    idivl   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   7:     return t36
    jmp     l_f1_exit              
    movl    $99, %eax               #   8:     assign v3 <- 99
    movb    %al, 20(%ebp)          

l_f1_exit:
    # epilogue
    addl    $24, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t31      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t32      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t33      <ptr(4) to <array 5 of <array 7 of <array 2 of <array 2 of <array 2 of <char>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t34      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t35      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t36      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t37      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t38      <int> %ebp-44 ]
    #    -45(%ebp)   1  [ $t39      <bool> %ebp-45 ]
    #    -52(%ebp)   4  [ $t40      <ptr(4) to <array 4 of <array 6 of <array 3 of <array 1 of <array 5 of <int>>>>>>> %ebp-52 ]
    #    -53(%ebp)   1  [ $t41      <bool> %ebp-53 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 5 of <array 9 of <array 10 of <array 3 of <array 4 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 8 of <array 10 of <array 4 of <array 10 of <array 4 of <int>>>>>>> %ebp+16 ]
    #    -60(%ebp)   4  [ $v3       <int> %ebp-60 ]
    #   -1524(%ebp)  1464  [ $v4       <array 4 of <array 6 of <array 3 of <array 1 of <array 5 of <int>>>>>> %ebp-1524 ]
    #   -1828(%ebp)  304  [ $v5       <array 5 of <array 7 of <array 2 of <array 2 of <array 2 of <char>>>>>> %ebp-1828 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $1816, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $454, %ecx             
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-1524(%ebp)          # local array 'v4': 5 dimensions
    movl    $4,-1520(%ebp)          #   dimension 1: 4 elements
    movl    $6,-1516(%ebp)          #   dimension 2: 6 elements
    movl    $3,-1512(%ebp)          #   dimension 3: 3 elements
    movl    $1,-1508(%ebp)          #   dimension 4: 1 elements
    movl    $5,-1504(%ebp)          #   dimension 5: 5 elements
    movl    $5,-1828(%ebp)          # local array 'v5': 5 dimensions
    movl    $5,-1824(%ebp)          #   dimension 1: 5 elements
    movl    $7,-1820(%ebp)          #   dimension 2: 7 elements
    movl    $2,-1816(%ebp)          #   dimension 3: 2 elements
    movl    $2,-1812(%ebp)          #   dimension 4: 2 elements
    movl    $2,-1808(%ebp)          #   dimension 5: 2 elements

    # function body
    movl    $21019, %eax            #   0:     div    t31 <- 21019, 18659
    movl    $18659, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     sub    t32 <- t31, 57529
    movl    $57529, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     return t32
    jmp     l_f2_exit              
    jmp     l_f2_2_if_true          #   3:     goto   2_if_true
    jmp     l_f2_2_if_true          #   4:     goto   2_if_true
    jmp     l_f2_3_if_false         #   5:     goto   3_if_false
l_f2_2_if_true:
    movl    $66641, %eax            #   7:     assign v3 <- 66641
    movl    %eax, -60(%ebp)        
    movl    $73229, %eax            #   8:     return 73229
    jmp     l_f2_exit              
    jmp     l_f2_1                  #   9:     goto   1
l_f2_3_if_false:
l_f2_1:
    leal    -1828(%ebp), %eax       #  12:     &()    t33 <- v5
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  13:     param  2 <- t33
    pushl   %eax                   
    movl    $15572, %eax            #  14:     div    t34 <- 15572, 64580
    movl    $64580, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  15:     div    t35 <- t34, 5455
    movl    $5455, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  16:     div    t36 <- t35, 13535
    movl    $13535, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  17:     mul    t37 <- t36, 58688
    movl    $58688, %ebx           
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  18:     add    t38 <- t37, 27807
    movl    $27807, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $19357, %eax            #  19:     if     19357 = t38 goto 11
    movl    -44(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f2_11                
    jmp     l_f2_12                 #  20:     goto   12
l_f2_11:
    movl    $1, %eax                #  22:     assign t39 <- 1
    movb    %al, -45(%ebp)         
    jmp     l_f2_13                 #  23:     goto   13
l_f2_12:
    movl    $0, %eax                #  25:     assign t39 <- 0
    movb    %al, -45(%ebp)         
l_f2_13:
    movzbl  -45(%ebp), %eax         #  27:     param  1 <- t39
    pushl   %eax                   
    leal    -1524(%ebp), %eax       #  28:     &()    t40 <- v4
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  29:     param  0 <- t40
    pushl   %eax                   
    call    f0                      #  30:     call   t41 <- f0
    addl    $12, %esp              
    movb    %al, -53(%ebp)         

l_f2_exit:
    # epilogue
    addl    $1816, %esp             # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 5 of <array 7 of <array 2 of <array 2 of <array 2 of <char>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t10      <ptr(4) to <array 4 of <array 6 of <array 3 of <array 1 of <array 5 of <int>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t11      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t12      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t13      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t14      <ptr(4) to <array 4 of <array 6 of <array 3 of <array 1 of <array 5 of <int>>>>>>> %ebp-40 ]
    #    -44(%ebp)   4  [ $t15      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t16      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t17      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t18      <ptr(4) to <array 4 of <array 6 of <array 3 of <array 1 of <array 5 of <int>>>>>>> %ebp-56 ]
    #    -60(%ebp)   4  [ $t19      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t2       <ptr(4) to <array 4 of <array 6 of <array 3 of <array 1 of <array 5 of <int>>>>>>> %ebp-64 ]
    #    -68(%ebp)   4  [ $t20      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t21      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t22      <ptr(4) to <array 4 of <array 6 of <array 3 of <array 1 of <array 5 of <int>>>>>>> %ebp-76 ]
    #    -80(%ebp)   4  [ $t23      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t24      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t25      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t26      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t27      <ptr(4) to <array 4 of <array 6 of <array 3 of <array 1 of <array 5 of <int>>>>>>> %ebp-96 ]
    #   -100(%ebp)   4  [ $t28      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t29      <int> %ebp-104 ]
    #   -105(%ebp)   1  [ $t3       <bool> %ebp-105 ]
    #   -112(%ebp)   4  [ $t30      <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t4       <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t5       <int> %ebp-120 ]
    #   -124(%ebp)   4  [ $t6       <int> %ebp-124 ]
    #   -128(%ebp)   4  [ $t7       <int> %ebp-128 ]
    #   -132(%ebp)   4  [ $t8       <int> %ebp-132 ]
    #   -136(%ebp)   4  [ $t9       <ptr(4) to <array 4 of <array 6 of <array 3 of <array 1 of <array 5 of <int>>>>>>> %ebp-136 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $124, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $31, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_test_1_while_cond:
    call    dummyBOOLfunc           #   1:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t0 = 1 goto 2_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_2_while_body    
l_test_2_while_body:
    jmp     l_test_1_while_cond     #   4:     goto   1_while_cond
    leal    v1, %eax                #   5:     &()    t1 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   6:     param  2 <- t1
    pushl   %eax                   
    movl    $0, %eax                #   7:     param  1 <- 0
    pushl   %eax                   
    leal    v0, %eax                #   8:     &()    t2 <- v0
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #   9:     param  0 <- t2
    pushl   %eax                   
    call    f0                      #  10:     call   t3 <- f0
    addl    $12, %esp              
    movb    %al, -105(%ebp)        
    movzbl  -105(%ebp), %eax        #  11:     if     t3 = 1 goto 6_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_6_if_true       
    jmp     l_test_7_if_false       #  12:     goto   7_if_false
l_test_6_if_true:
    jmp     l_test_exit            
    jmp     l_test_5                #  15:     goto   5
l_test_7_if_false:
l_test_5:
    movl    $71267, %eax            #  18:     mul    t4 <- 71267, 83562
    movl    $83562, %ebx           
    imull   %ebx                   
    movl    %eax, -116(%ebp)       
    movl    -116(%ebp), %eax        #  19:     mul    t5 <- t4, 89442
    movl    $89442, %ebx           
    imull   %ebx                   
    movl    %eax, -120(%ebp)       
    movl    -120(%ebp), %eax        #  20:     mul    t6 <- t5, 22697
    movl    $22697, %ebx           
    imull   %ebx                   
    movl    %eax, -124(%ebp)       
    movl    -124(%ebp), %eax        #  21:     sub    t7 <- t6, 35054
    movl    $35054, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -128(%ebp)       
    movl    -128(%ebp), %eax        #  22:     sub    t8 <- t7, 63548
    movl    $63548, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -132(%ebp)       
    leal    v0, %eax                #  23:     &()    t9 <- v0
    movl    %eax, -136(%ebp)       
    movl    $2, %eax                #  24:     param  1 <- 2
    pushl   %eax                   
    leal    v0, %eax                #  25:     &()    t10 <- v0
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  26:     param  0 <- t10
    pushl   %eax                   
    call    DIM                     #  27:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    $40358, %eax            #  28:     mul    t12 <- 40358, t11
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  29:     add    t13 <- t12, 84000
    movl    $84000, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $3, %eax                #  30:     param  1 <- 3
    pushl   %eax                   
    leal    v0, %eax                #  31:     &()    t14 <- v0
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  32:     param  0 <- t14
    pushl   %eax                   
    call    DIM                     #  33:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -36(%ebp), %eax         #  34:     mul    t16 <- t13, t15
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  35:     add    t17 <- t16, 49819
    movl    $49819, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $4, %eax                #  36:     param  1 <- 4
    pushl   %eax                   
    leal    v0, %eax                #  37:     &()    t18 <- v0
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  38:     param  0 <- t18
    pushl   %eax                   
    call    DIM                     #  39:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    -52(%ebp), %eax         #  40:     mul    t20 <- t17, t19
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  41:     add    t21 <- t20, 68387
    movl    $68387, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $5, %eax                #  42:     param  1 <- 5
    pushl   %eax                   
    leal    v0, %eax                #  43:     &()    t22 <- v0
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  44:     param  0 <- t22
    pushl   %eax                   
    call    DIM                     #  45:     call   t23 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    -72(%ebp), %eax         #  46:     mul    t24 <- t21, t23
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  47:     add    t25 <- t24, 91750
    movl    $91750, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  48:     mul    t26 <- t25, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -92(%ebp)        
    leal    v0, %eax                #  49:     &()    t27 <- v0
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #  50:     param  0 <- t27
    pushl   %eax                   
    call    DOFS                    #  51:     call   t28 <- DOFS
    addl    $4, %esp               
    movl    %eax, -100(%ebp)       
    movl    -92(%ebp), %eax         #  52:     add    t29 <- t26, t28
    movl    -100(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -104(%ebp)       
    movl    -136(%ebp), %eax        #  53:     add    t30 <- t9, t29
    movl    -104(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -112(%ebp)       
    movl    -132(%ebp), %eax        #  54:     assign @t30 <- t8
    movl    -112(%ebp), %edi       
    movl    %eax, (%edi)           
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $124, %esp              # remove locals
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
v0:                                 # <array 4 of <array 6 of <array 3 of <array 1 of <array 5 of <int>>>>>>
    .long    5
    .long    4
    .long    6
    .long    3
    .long    1
    .long    5
    .skip 1440
v1:                                 # <array 5 of <array 7 of <array 2 of <array 2 of <array 2 of <char>>>>>>
    .long    5
    .long    5
    .long    7
    .long    2
    .long    2
    .long    2
    .skip  280
v2:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
