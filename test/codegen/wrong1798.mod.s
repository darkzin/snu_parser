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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t2       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t3       <bool> %ebp-18 ]
    #    -19(%ebp)   1  [ $t4       <bool> %ebp-19 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 2 of <array 85 of <array 28 of <array 61 of <array 96 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #    -20(%ebp)   1  [ $v2       <bool> %ebp-20 ]

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
    movl    $93644, %eax            #   0:     sub    t1 <- 93644, 95465
    movl    $95465, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     assign v1 <- t1
    movl    %eax, 12(%ebp)         
l_f0_2_while_cond:
    jmp     l_f0_6                  #   3:     goto   6
    movl    $1, %eax                #   4:     assign t2 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f0_7                  #   5:     goto   7
l_f0_6:
    movl    $0, %eax                #   7:     assign t2 <- 0
    movb    %al, -17(%ebp)         
l_f0_7:
    movl    $0, %eax                #   9:     if     0 # t2 goto 3_while_body
    movzbl  -17(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f0_3_while_body      
    jmp     l_f0_1                  #  10:     goto   1
l_f0_3_while_body:
l_f0_10_while_cond:
    movl    $100, %eax              #  13:     if     100 >= 100 goto 11_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f0_11_while_body     
    jmp     l_f0_9                  #  14:     goto   9
l_f0_11_while_body:
    jmp     l_f0_10_while_cond      #  16:     goto   10_while_cond
l_f0_9:
    movl    $97, %eax               #  18:     if     97 # 97 goto 14_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f0_14_if_true        
    jmp     l_f0_15_if_false        #  19:     goto   15_if_false
l_f0_14_if_true:
    jmp     l_f0_13                 #  21:     goto   13
l_f0_15_if_false:
l_f0_13:
    movl    $97, %eax               #  24:     if     97 < 99 goto 18
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_18                
    jmp     l_f0_19                 #  25:     goto   19
l_f0_18:
    movl    $1, %eax                #  27:     assign t3 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f0_20                 #  28:     goto   20
l_f0_19:
    movl    $0, %eax                #  30:     assign t3 <- 0
    movb    %al, -18(%ebp)         
l_f0_20:
    movzbl  -18(%ebp), %eax         #  32:     return t3
    jmp     l_f0_exit              
    movl    $96676, %eax            #  33:     if     96676 # 3695 goto 23
    movl    $3695, %ebx            
    cmpl    %ebx, %eax             
    jne     l_f0_23                
    jmp     l_f0_24                 #  34:     goto   24
l_f0_23:
    movl    $1, %eax                #  36:     assign t4 <- 1
    movb    %al, -19(%ebp)         
    jmp     l_f0_25                 #  37:     goto   25
l_f0_24:
    movl    $0, %eax                #  39:     assign t4 <- 0
    movb    %al, -19(%ebp)         
l_f0_25:
    movzbl  -19(%ebp), %eax         #  41:     return t4
    jmp     l_f0_exit              
    movl    $0, %eax                #  42:     return 0
    jmp     l_f0_exit              
    jmp     l_f0_2_while_cond       #  43:     goto   2_while_cond
l_f0_1:
    movl    $0, %eax                #  45:     assign v2 <- 0
    movb    %al, -20(%ebp)         

l_f0_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t4       <char> %ebp-21 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 65 of <array 76 of <array 1 of <array 38 of <array 47 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 28 of <array 11 of <array 61 of <array 84 of <array 22 of <bool>>>>>>> %ebp+12 ]
    #    -22(%ebp)   1  [ $v2       <char> %ebp-22 ]

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
    jmp     l_f1_2_if_false         #   0:     goto   2_if_false
l_f1_4_while_cond:
    jmp     l_f1_3                  #   2:     goto   3
    jmp     l_f1_4_while_cond       #   3:     goto   4_while_cond
l_f1_3:
    call    dummyCHARfunc           #   5:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
l_f1_8_while_cond:
    jmp     l_f1_8_while_cond       #   7:     goto   8_while_cond
    call    dummyCHARfunc           #   8:     call   t2 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    jmp     l_f1_0                  #   9:     goto   0
l_f1_2_if_false:
l_f1_0:
    call    dummyINTfunc            #  12:     call   t3 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    call    dummyCHARfunc           #  13:     call   t4 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  14:     assign v2 <- t4
    movb    %al, -22(%ebp)         

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
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <ptr(4) to <array 28 of <array 11 of <array 61 of <array 84 of <array 22 of <bool>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <ptr(4) to <array 65 of <array 76 of <array 1 of <array 38 of <array 47 of <bool>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t5       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t6       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t7       <int> %ebp-40 ]
    #   -8822904(%ebp)  8822864  [ $v0       <array 65 of <array 76 of <array 1 of <array 38 of <array 47 of <bool>>>>>> %ebp-8822904 ]
    #   -43543152(%ebp)  34720248  [ $v1       <array 28 of <array 11 of <array 61 of <array 84 of <array 22 of <bool>>>>>> %ebp-43543152 ]
    #   -43543156(%ebp)   4  [ $v2       <int> %ebp-43543156 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $43543144, %esp         # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $10885786, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-8822904(%ebp)       # local array 'v0': 5 dimensions
    movl    $65,-8822900(%ebp)      #   dimension 1: 65 elements
    movl    $76,-8822896(%ebp)      #   dimension 2: 76 elements
    movl    $1,-8822892(%ebp)       #   dimension 3: 1 elements
    movl    $38,-8822888(%ebp)      #   dimension 4: 38 elements
    movl    $47,-8822884(%ebp)      #   dimension 5: 47 elements
    movl    $5,-43543152(%ebp)      # local array 'v1': 5 dimensions
    movl    $28,-43543148(%ebp)     #   dimension 1: 28 elements
    movl    $11,-43543144(%ebp)     #   dimension 2: 11 elements
    movl    $61,-43543140(%ebp)     #   dimension 3: 61 elements
    movl    $84,-43543136(%ebp)     #   dimension 4: 84 elements
    movl    $22,-43543132(%ebp)     #   dimension 5: 22 elements

    # function body
    call    dummyCHARfunc           #   0:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t1
    jmp     l_f2_exit              
l_f2_2_while_cond:
    movl    $83219, %eax            #   3:     add    t2 <- 83219, 94186
    movl    $94186, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     if     t2 # 11892 goto 3_while_body
    movl    $11892, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_3_while_body      
    jmp     l_f2_1                  #   5:     goto   1
l_f2_3_while_body:
    movl    $98, %eax               #   7:     return 98
    jmp     l_f2_exit              
    leal    -43543152(%ebp), %eax   #   8:     &()    t3 <- v1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   9:     param  1 <- t3
    pushl   %eax                   
    leal    -8822904(%ebp), %eax    #  10:     &()    t4 <- v0
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  11:     param  0 <- t4
    pushl   %eax                   
    call    f1                      #  12:     call   t5 <- f1
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    jmp     l_f2_2_while_cond       #  13:     goto   2_while_cond
l_f2_1:
    call    ReadInt                 #  15:     call   t6 <- ReadInt
    movl    %eax, -36(%ebp)        
    movl    $25893, %eax            #  16:     add    t7 <- 25893, t6
    movl    -36(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  17:     assign v2 <- t7
    movl    %eax, -43543156(%ebp)  

l_f2_exit:
    # epilogue
    addl    $43543144, %esp         # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]

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
l_test_1_while_cond:
    movl    $29150, %eax            #   1:     if     29150 >= 84882 goto 2_while_body
    movl    $84882, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_2_while_body    
    jmp     l_test_0                #   2:     goto   0
l_test_2_while_body:
    call    WriteLn                 #   4:     call   WriteLn
    jmp     l_test_1_while_cond     #   5:     goto   1_while_cond
l_test_0:
    jmp     l_test_7_if_false       #   7:     goto   7_if_false
    jmp     l_test_10_if_false      #   8:     goto   10_if_false
    jmp     l_test_8                #   9:     goto   8
l_test_10_if_false:
l_test_8:
l_test_12_while_cond:
    movl    $17802, %eax            #  13:     if     17802 <= 71026 goto 13_while_body
    movl    $71026, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_13_while_body   
    jmp     l_test_11               #  14:     goto   11
l_test_13_while_body:
    jmp     l_test_12_while_cond    #  16:     goto   12_while_cond
l_test_11:
l_test_16_while_cond:
    jmp     l_test_16_while_cond    #  19:     goto   16_while_cond
    call    dummyBOOLfunc           #  20:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_5                #  21:     goto   5
l_test_7_if_false:
l_test_5:
    jmp     l_test_exit            
l_test_21_while_cond:
    movl    $98, %eax               #  26:     if     98 > 97 goto 22_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_22_while_body   
    jmp     l_test_20               #  27:     goto   20
l_test_22_while_body:
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_21_while_cond    #  31:     goto   21_while_cond
l_test_20:

l_test_exit:
    # epilogue
    addl    $4, %esp                # remove locals
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
