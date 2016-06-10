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
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t7       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t8       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t9       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $v0       <int> %ebp-48 ]

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
    movl    $70269, %eax            #   0:     mul    t3 <- 70269, 18580
    movl    $18580, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   1:     mul    t4 <- t3, 71892
    movl    $71892, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   2:     assign v0 <- t4
    movl    %eax, -48(%ebp)        
l_f0_2_while_cond:
    jmp     l_f0_3_while_body       #   4:     goto   3_while_body
l_f0_3_while_body:
    jmp     l_f0_2_while_cond       #   6:     goto   2_while_cond
    movl    $15465, %eax            #   7:     mul    t5 <- 15465, 38722
    movl    $38722, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   8:     mul    t6 <- t5, 53515
    movl    $53515, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   9:     mul    t7 <- t6, 17095
    movl    $17095, %ebx           
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  10:     div    t8 <- t7, 1187
    movl    $1187, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  11:     div    t9 <- t8, 20207
    movl    $20207, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  12:     sub    t10 <- t9, 5989
    movl    $5989, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  13:     return t10
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $36, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t4       <char> %ebp-17 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 8 of <array 3 of <array 5 of <array 3 of <array 3 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]

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
    movl    $0, %eax                #   0:     assign v1 <- 0
    movb    %al, 12(%ebp)          
    movl    $97, %eax               #   1:     return 97
    jmp     l_f1_exit              
    movl    $100, %eax              #   2:     return 100
    jmp     l_f1_exit              
    movl    $71461, %eax            #   3:     if     71461 < 82073 goto 7_if_true
    movl    $82073, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_7_if_true         
    jmp     l_f1_8_if_false         #   4:     goto   8_if_false
l_f1_7_if_true:
    jmp     l_f1_6                  #   6:     goto   6
l_f1_8_if_false:
l_f1_6:
    jmp     l_f1_0                  #   9:     goto   0
l_f1_0:
    movl    $75094, %eax            #  11:     sub    t3 <- 75094, 69927
    movl    $69927, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  12:     assign v2 <- t3
    movl    %eax, 16(%ebp)         
    call    dummyCHARfunc           #  13:     call   t4 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #  14:     return t4
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t5       <char> %ebp-15 ]
    #    -16(%ebp)   1  [ $t6       <bool> %ebp-16 ]
    #    -20(%ebp)   4  [ $t7       <ptr(4) to <array 8 of <array 3 of <array 5 of <array 3 of <array 3 of <bool>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t8       <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t9       <bool> %ebp-22 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 9 of <array 6 of <array 8 of <array 6 of <array 5 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <int> %ebp+20 ]
    #   -1128(%ebp)  1104  [ $v4       <array 8 of <array 3 of <array 5 of <array 3 of <array 3 of <bool>>>>>> %ebp-1128 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $1116, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $279, %ecx             
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-1128(%ebp)          # local array 'v4': 5 dimensions
    movl    $8,-1124(%ebp)          #   dimension 1: 8 elements
    movl    $3,-1120(%ebp)          #   dimension 2: 3 elements
    movl    $5,-1116(%ebp)          #   dimension 3: 5 elements
    movl    $3,-1112(%ebp)          #   dimension 4: 3 elements
    movl    $3,-1108(%ebp)          #   dimension 5: 3 elements

    # function body
    call    dummyBOOLfunc           #   0:     call   t3 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t3
    jmp     l_f2_exit              
    movl    $23990, %eax            #   2:     if     23990 < 70611 goto 2_if_true
    movl    $70611, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_2_if_true         
    jmp     l_f2_3_if_false         #   3:     goto   3_if_false
l_f2_2_if_true:
    movl    $100, %eax              #   5:     if     100 > 99 goto 6
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_6                 
    jmp     l_f2_7                  #   6:     goto   7
l_f2_6:
    movl    $1, %eax                #   8:     assign t4 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_8                  #   9:     goto   8
l_f2_7:
    movl    $0, %eax                #  11:     assign t4 <- 0
    movb    %al, -14(%ebp)         
l_f2_8:
    movzbl  -14(%ebp), %eax         #  13:     return t4
    jmp     l_f2_exit              
    call    dummyCHARfunc           #  14:     call   t5 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    jmp     l_f2_1                  #  15:     goto   1
l_f2_3_if_false:
l_f2_1:
    movl    $14541, %eax            #  18:     param  2 <- 14541
    pushl   %eax                   
    jmp     l_f2_17                 #  19:     goto   17
    movl    $1, %eax                #  20:     assign t6 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_f2_18                 #  21:     goto   18
l_f2_17:
    movl    $0, %eax                #  23:     assign t6 <- 0
    movb    %al, -16(%ebp)         
l_f2_18:
    movzbl  -16(%ebp), %eax         #  25:     param  1 <- t6
    pushl   %eax                   
    leal    -1128(%ebp), %eax       #  26:     &()    t7 <- v4
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  27:     param  0 <- t7
    pushl   %eax                   
    call    f1                      #  28:     call   t8 <- f1
    addl    $12, %esp              
    movb    %al, -21(%ebp)         
    movl    $98, %eax               #  29:     if     98 >= t8 goto 12
    movzbl  -21(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f2_12                
    jmp     l_f2_13                 #  30:     goto   13
l_f2_12:
    movl    $1, %eax                #  32:     assign t9 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_f2_14                 #  33:     goto   14
l_f2_13:
    movl    $0, %eax                #  35:     assign t9 <- 0
    movb    %al, -22(%ebp)         
l_f2_14:
    movzbl  -22(%ebp), %eax         #  37:     return t9
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $1116, %esp             # remove locals
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
l_test_1_while_cond:
    movl    $41822, %eax            #   1:     add    t0 <- 41822, 38822
    movl    $38822, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $38897, %eax            #   2:     div    t1 <- 38897, 60846
    movl    $60846, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #   3:     sub    t2 <- t0, t1
    movl    -20(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $22373, %eax            #   4:     if     22373 >= t2 goto 2_while_body
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_test_2_while_body    
    jmp     l_test_0                #   5:     goto   0
l_test_2_while_body:
    jmp     l_test_1_while_cond     #   7:     goto   1_while_cond
l_test_0:
l_test_5_while_cond:
    movl    $99, %eax               #  10:     if     99 < 99 goto 6_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_6_while_body    
l_test_6_while_body:
    jmp     l_test_5_while_cond     #  12:     goto   5_while_cond
l_test_10_while_cond:
    movl    $1, %eax                #  14:     if     1 # 1 goto 11_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_11_while_body   
    jmp     l_test_9                #  15:     goto   9
l_test_11_while_body:
l_test_14_while_cond:
    movl    $100, %eax              #  18:     if     100 < 97 goto 15_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_15_while_body   
    jmp     l_test_13               #  19:     goto   13
l_test_15_while_body:
    jmp     l_test_14_while_cond    #  21:     goto   14_while_cond
l_test_13:
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_19               #  25:     goto   19
l_test_19:
l_test_23_while_cond:
    jmp     l_test_23_while_cond    #  28:     goto   23_while_cond
    jmp     l_test_10_while_cond    #  29:     goto   10_while_cond
l_test_9:
    jmp     l_test_exit            
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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









    # end of global data section
    #-----------------------------------------

    .end
##################################################
