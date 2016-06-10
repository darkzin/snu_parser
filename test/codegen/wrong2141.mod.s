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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t8       <bool> %ebp-33 ]
    #    -40(%ebp)   4  [ $v1       <int> %ebp-40 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $28, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $7, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $42472, %eax            #   0:     mul    t3 <- 42472, 35675
    movl    $35675, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     div    t4 <- t3, 71165
    movl    $71165, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     div    t5 <- t4, 35888
    movl    $35888, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    $95281, %eax            #   3:     add    t6 <- 95281, t5
    movl    -24(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     assign v1 <- t6
    movl    %eax, -40(%ebp)        
    call    ReadInt                 #   5:     call   t7 <- ReadInt
    movl    %eax, -32(%ebp)        
l_f0_3_while_cond:
    jmp     l_f0_4_while_body       #   7:     goto   4_while_body
    jmp     l_f0_2                  #   8:     goto   2
l_f0_4_while_body:
    movl    $98, %eax               #  10:     if     98 = 97 goto 7
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_f0_7                 
    jmp     l_f0_8                  #  11:     goto   8
l_f0_7:
    movl    $1, %eax                #  13:     assign t8 <- 1
    movb    %al, -33(%ebp)         
    jmp     l_f0_9                  #  14:     goto   9
l_f0_8:
    movl    $0, %eax                #  16:     assign t8 <- 0
    movb    %al, -33(%ebp)         
l_f0_9:
    movzbl  -33(%ebp), %eax         #  18:     return t8
    jmp     l_f0_exit              
    jmp     l_f0_3_while_cond       #  19:     goto   3_while_cond
l_f0_2:

l_f0_exit:
    # epilogue
    addl    $28, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]
    #     20(%ebp)   1  [ %v4       <bool> %ebp+20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $12, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    call    ReadInt                 #   0:     call   t3 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     return t3
    jmp     l_f1_exit              
    jmp     l_f1_2_if_true          #   2:     goto   2_if_true
    jmp     l_f1_3_if_false         #   3:     goto   3_if_false
l_f1_2_if_true:
l_f1_6_while_cond:
    jmp     l_f1_5                  #   6:     goto   5
    jmp     l_f1_6_while_cond       #   7:     goto   6_while_cond
l_f1_5:
    jmp     l_f1_1                  #   9:     goto   1
l_f1_3_if_false:
l_f1_1:
    movl    $19203, %eax            #  12:     mul    t4 <- 19203, 76136
    movl    $76136, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    $23061, %eax            #  13:     add    t5 <- 23061, t4
    movl    -20(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  14:     return t5
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t6       <char> %ebp-25 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 48 of <array 27 of <array 8 of <array 65 of <array 19 of <char>>>>>>> %ebp+8 ]
    #    -32(%ebp)   4  [ $v2       <int> %ebp-32 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $20, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $5, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $8539, %eax             #   0:     div    t3 <- 8539, 32409
    movl    $32409, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     sub    t4 <- t3, 98389
    movl    $98389, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     add    t5 <- t4, 74615
    movl    $74615, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     assign v2 <- t5
    movl    %eax, -32(%ebp)        
    call    dummyCHARfunc           #   4:     call   t6 <- dummyCHARfunc
    movb    %al, -25(%ebp)         
    jmp     l_f2_1                  #   5:     goto   1
l_f2_1:
l_f2_6_while_cond:
    movl    $98, %eax               #   8:     if     98 # 97 goto 7_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_7_while_body      
    jmp     l_f2_5                  #   9:     goto   5
l_f2_7_while_body:
    movl    $98, %eax               #  11:     if     98 >= 99 goto 10_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_10_if_true        
    jmp     l_f2_11_if_false        #  12:     goto   11_if_false
l_f2_10_if_true:
    jmp     l_f2_9                  #  14:     goto   9
l_f2_11_if_false:
l_f2_9:
    jmp     l_f2_13                 #  17:     goto   13
l_f2_13:
l_f2_17_while_cond:
    movl    $39510, %eax            #  20:     if     39510 >= 36496 goto 18_while_body
    movl    $36496, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_18_while_body     
    jmp     l_f2_16                 #  21:     goto   16
l_f2_18_while_body:
    jmp     l_f2_17_while_cond      #  23:     goto   17_while_cond
l_f2_16:
    movl    $59699, %eax            #  25:     return 59699
    jmp     l_f2_exit              
    movl    $72663, %eax            #  26:     return 72663
    jmp     l_f2_exit              
    jmp     l_f2_6_while_cond       #  27:     goto   6_while_cond
l_f2_5:

l_f2_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t2       <bool> %ebp-18 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $8, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
l_test_1_while_cond:
    movl    $1, %eax                #   1:     if     1 # 0 goto 2_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_2_while_body    
    jmp     l_test_0                #   2:     goto   0
l_test_2_while_body:
    jmp     l_test_exit            
    jmp     l_test_1_while_cond     #   5:     goto   1_while_cond
l_test_0:
    jmp     l_test_7_if_false       #   7:     goto   7_if_false
    movl    $0, %eax                #   8:     if     0 = 0 goto 9_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_9_if_true       
    jmp     l_test_10_if_false      #   9:     goto   10_if_false
l_test_9_if_true:
    jmp     l_test_8                #  11:     goto   8
l_test_10_if_false:
l_test_8:
    movl    $99, %eax               #  14:     assign v0 <- 99
    movb    %al, v0                
    call    ReadInt                 #  15:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $98, %eax               #  16:     assign v0 <- 98
    movb    %al, v0                
    jmp     l_test_5                #  17:     goto   5
l_test_7_if_false:
l_test_5:
    movl    $100, %eax              #  20:     assign v0 <- 100
    movb    %al, v0                
    call    dummyBOOLfunc           #  21:     call   t1 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    movl    $99, %eax               #  22:     if     99 # 98 goto 18_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_18_if_true      
    jmp     l_test_19_if_false      #  23:     goto   19_if_false
l_test_18_if_true:
    jmp     l_test_exit            
l_test_23_while_cond:
    movl    $0, %eax                #  27:     if     0 # 1 goto 24_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_24_while_body   
    jmp     l_test_22               #  28:     goto   22
l_test_24_while_body:
    jmp     l_test_23_while_cond    #  30:     goto   23_while_cond
l_test_22:
    jmp     l_test_exit            
    movl    $49715, %eax            #  33:     if     49715 # 95837 goto 28
    movl    $95837, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_28              
    jmp     l_test_29               #  34:     goto   29
l_test_28:
    movl    $1, %eax                #  36:     assign t2 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_test_30               #  37:     goto   30
l_test_29:
    movl    $0, %eax                #  39:     assign t2 <- 0
    movb    %al, -18(%ebp)         
l_test_30:
    movzbl  -18(%ebp), %eax         #  41:     assign v1 <- t2
    movb    %al, v1                
    jmp     l_test_17               #  42:     goto   17
l_test_19_if_false:
l_test_17:
    movl    $99, %eax               #  45:     assign v0 <- 99
    movb    %al, v0                

l_test_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
