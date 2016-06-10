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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t11      <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t7       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t8       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t9       <int> %ebp-44 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $32, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $8, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f0_1_while_cond:
    movl    $32260, %eax            #   1:     sub    t4 <- 32260, 95236
    movl    $95236, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   2:     sub    t5 <- t4, 46011
    movl    $46011, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $28543, %eax            #   3:     if     28543 = t5 goto 2_while_body
    movl    -28(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f0_2_while_body      
    jmp     l_f0_0                  #   4:     goto   0
l_f0_2_while_body:
    jmp     l_f0_6_if_false         #   6:     goto   6_if_false
    jmp     l_f0_4                  #   7:     goto   4
l_f0_6_if_false:
l_f0_4:
    jmp     l_f0_9_if_false         #  10:     goto   9_if_false
    jmp     l_f0_7                  #  11:     goto   7
l_f0_9_if_false:
l_f0_7:
    jmp     l_f0_12_if_false        #  14:     goto   12_if_false
    jmp     l_f0_10                 #  15:     goto   10
l_f0_12_if_false:
l_f0_10:
    jmp     l_f0_1_while_cond       #  18:     goto   1_while_cond
l_f0_0:
    movl    $46168, %eax            #  20:     sub    t6 <- 46168, 1180
    movl    $1180, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  21:     add    t7 <- t6, 44425
    movl    $44425, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  22:     sub    t8 <- t7, 94051
    movl    $94051, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  23:     add    t9 <- t8, 60350
    movl    $60350, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  24:     add    t10 <- t9, 96731
    movl    $96731, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  25:     return t10
    jmp     l_f0_exit              
    call    dummyCHARfunc           #  26:     call   t11 <- dummyCHARfunc
    movb    %al, -17(%ebp)         

l_f0_exit:
    # epilogue
    addl    $32, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 65 of <array 32 of <array 46 of <array 14 of <array 45 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 82 of <array 45 of <array 67 of <array 8 of <array 32 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 74 of <array 32 of <array 40 of <array 2 of <array 96 of <int>>>>>>> %ebp+20 ]
    #    -25(%ebp)   1  [ $v5       <char> %ebp-25 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $16, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 12(%esp)         
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
l_f1_1_while_cond:
    movl    $1, %eax                #   1:     assign t4 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_6                  #   2:     goto   6
    movl    $0, %eax                #   3:     assign t4 <- 0
    movb    %al, -13(%ebp)         
l_f1_6:
    jmp     l_f1_8                  #   5:     goto   8
    jmp     l_f1_9                  #   6:     goto   9
l_f1_8:
    movl    $1, %eax                #   8:     assign t5 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_10                 #   9:     goto   10
l_f1_9:
    movl    $0, %eax                #  11:     assign t5 <- 0
    movb    %al, -14(%ebp)         
l_f1_10:
    movzbl  -13(%ebp), %eax         #  13:     if     t4 # t5 goto 2_while_body
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f1_2_while_body      
    jmp     l_f1_0                  #  14:     goto   0
l_f1_2_while_body:
    jmp     l_f1_1_while_cond       #  16:     goto   1_while_cond
l_f1_0:
    movl    $99, %eax               #  18:     assign v5 <- 99
    movb    %al, -25(%ebp)         
    movl    $47256, %eax            #  19:     add    t6 <- 47256, 3465
    movl    $3465, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  20:     add    t7 <- t6, 77575
    movl    $77575, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  21:     assign v1 <- t7
    movl    %eax, 8(%ebp)          

l_f1_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <ptr(4) to <array 74 of <array 32 of <array 40 of <array 2 of <array 96 of <int>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <ptr(4) to <array 82 of <array 45 of <array 67 of <array 8 of <array 32 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <ptr(4) to <array 65 of <array 32 of <array 46 of <array 14 of <array 45 of <char>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $t16      <char> %ebp-37 ]
    #    -44(%ebp)   4  [ $t4       <ptr(4) to <array 74 of <array 32 of <array 40 of <array 2 of <array 96 of <int>>>>>>> %ebp-44 ]
    #    -48(%ebp)   4  [ $t5       <ptr(4) to <array 82 of <array 45 of <array 67 of <array 8 of <array 32 of <bool>>>>>>> %ebp-48 ]
    #    -52(%ebp)   4  [ $t6       <ptr(4) to <array 65 of <array 32 of <array 46 of <array 14 of <array 45 of <char>>>>>>> %ebp-52 ]
    #    -53(%ebp)   1  [ $t7       <char> %ebp-53 ]
    #    -54(%ebp)   1  [ $t8       <bool> %ebp-54 ]
    #    -55(%ebp)   1  [ $t9       <bool> %ebp-55 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 13 of <array 16 of <array 5 of <array 15 of <array 95 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 54 of <array 28 of <array 47 of <array 63 of <array 35 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 26 of <array 47 of <array 37 of <array 89 of <array 85 of <bool>>>>>>> %ebp+20 ]
    #   -60278480(%ebp)  60278424  [ $v5       <array 65 of <array 32 of <array 46 of <array 14 of <array 45 of <char>>>>>> %ebp-60278480 ]
    #   -123569384(%ebp)  63290904  [ $v6       <array 82 of <array 45 of <array 67 of <array 8 of <array 32 of <bool>>>>>> %ebp-123569384 ]
    #   -196314368(%ebp)  72744984  [ $v7       <array 74 of <array 32 of <array 40 of <array 2 of <array 96 of <int>>>>>> %ebp-196314368 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $196314356, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $49078589, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-60278480(%ebp)      # local array 'v5': 5 dimensions
    movl    $65,-60278476(%ebp)     #   dimension 1: 65 elements
    movl    $32,-60278472(%ebp)     #   dimension 2: 32 elements
    movl    $46,-60278468(%ebp)     #   dimension 3: 46 elements
    movl    $14,-60278464(%ebp)     #   dimension 4: 14 elements
    movl    $45,-60278460(%ebp)     #   dimension 5: 45 elements
    movl    $5,-123569384(%ebp)     # local array 'v6': 5 dimensions
    movl    $82,-123569380(%ebp)    #   dimension 1: 82 elements
    movl    $45,-123569376(%ebp)    #   dimension 2: 45 elements
    movl    $67,-123569372(%ebp)    #   dimension 3: 67 elements
    movl    $8,-123569368(%ebp)     #   dimension 4: 8 elements
    movl    $32,-123569364(%ebp)    #   dimension 5: 32 elements
    movl    $5,-196314368(%ebp)     # local array 'v7': 5 dimensions
    movl    $74,-196314364(%ebp)    #   dimension 1: 74 elements
    movl    $32,-196314360(%ebp)    #   dimension 2: 32 elements
    movl    $40,-196314356(%ebp)    #   dimension 3: 40 elements
    movl    $2,-196314352(%ebp)     #   dimension 4: 2 elements
    movl    $96,-196314348(%ebp)    #   dimension 5: 96 elements

    # function body
    jmp     l_f2_1_if_true          #   0:     goto   1_if_true
l_f2_1_if_true:
    leal    -196314368(%ebp), %eax  #   2:     &()    t4 <- v7
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   3:     param  3 <- t4
    pushl   %eax                   
    leal    -123569384(%ebp), %eax  #   4:     &()    t5 <- v6
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #   5:     param  2 <- t5
    pushl   %eax                   
    leal    -60278480(%ebp), %eax   #   6:     &()    t6 <- v5
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #   7:     param  1 <- t6
    pushl   %eax                   
    movl    $65165, %eax            #   8:     param  0 <- 65165
    pushl   %eax                   
    call    f1                      #   9:     call   t7 <- f1
    addl    $16, %esp              
    movb    %al, -53(%ebp)         
    jmp     l_f2_5                  #  10:     goto   5
l_f2_5:
    call    dummyBOOLfunc           #  12:     call   t8 <- dummyBOOLfunc
    movb    %al, -54(%ebp)         
    jmp     l_f2_0                  #  13:     goto   0
l_f2_0:
    jmp     l_f2_10_if_true         #  15:     goto   10_if_true
    jmp     l_f2_10_if_true         #  16:     goto   10_if_true
    jmp     l_f2_11_if_false        #  17:     goto   11_if_false
l_f2_10_if_true:
    call    dummyBOOLfunc           #  19:     call   t9 <- dummyBOOLfunc
    movb    %al, -55(%ebp)         
    jmp     l_f2_9                  #  20:     goto   9
l_f2_11_if_false:
l_f2_9:
    leal    -196314368(%ebp), %eax  #  23:     &()    t10 <- v7
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  24:     param  3 <- t10
    pushl   %eax                   
    leal    -123569384(%ebp), %eax  #  25:     &()    t11 <- v6
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  26:     param  2 <- t11
    pushl   %eax                   
    leal    -60278480(%ebp), %eax   #  27:     &()    t12 <- v5
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  28:     param  1 <- t12
    pushl   %eax                   
    movl    $59919, %eax            #  29:     add    t13 <- 59919, 11821
    movl    $11821, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  30:     add    t14 <- t13, 97808
    movl    $97808, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  31:     add    t15 <- t14, 75201
    movl    $75201, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  32:     param  0 <- t15
    pushl   %eax                   
    call    f1                      #  33:     call   t16 <- f1
    addl    $16, %esp              
    movb    %al, -37(%ebp)         
    movzbl  -37(%ebp), %eax         #  34:     param  0 <- t16
    pushl   %eax                   
    call    WriteChar               #  35:     call   WriteChar
    addl    $4, %esp               

l_f2_exit:
    # epilogue
    addl    $196314356, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $16, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 12(%esp)         
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    call    WriteLn                 #   0:     call   WriteLn
    movl    $98, %eax               #   1:     assign v0 <- 98
    movb    %al, v0                
    jmp     l_test_exit            
    movl    $46222, %eax            #   3:     div    t0 <- 46222, 56163
    movl    $56163, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   4:     mul    t1 <- t0, 2853
    movl    $2853, %ebx            
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   5:     mul    t2 <- t1, 83805
    movl    $83805, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   6:     add    t3 <- t2, 82379
    movl    $82379, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   7:     assign v1 <- t3
    movl    %eax, v1               
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $16, %esp               # remove locals
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
v0:                                 # <char>
    .skip    1
    .align   4
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
