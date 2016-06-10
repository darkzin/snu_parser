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
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t7       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t8       <int> %ebp-40 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 80 of <array 3 of <array 10 of <array 68 of <array 31 of <char>>>>>>> %ebp+8 ]

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
    jmp     l_f0_exit              
    movl    $98, %eax               #   1:     if     98 = 98 goto 2_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_f0_2_if_true         
    jmp     l_f0_3_if_false         #   2:     goto   3_if_false
l_f0_2_if_true:
    movl    $13208, %eax            #   4:     sub    t2 <- 13208, 13701
    movl    $13701, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   5:     sub    t3 <- t2, 50091
    movl    $50091, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   6:     add    t4 <- t3, 78309
    movl    $78309, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   7:     add    t5 <- t4, 40685
    movl    $40685, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   8:     add    t6 <- t5, 36329
    movl    $36329, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   9:     add    t7 <- t6, 36944
    movl    $36944, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  10:     add    t8 <- t7, 16540
    movl    $16540, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  11:     param  0 <- t8
    pushl   %eax                   
    call    WriteInt                #  12:     call   WriteInt
    addl    $4, %esp               
    jmp     l_f0_1                  #  13:     goto   1
l_f0_3_if_false:
l_f0_1:
    jmp     l_f0_exit              

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
    #    -16(%ebp)   4  [ $t2       <ptr(4) to <array 7 of <char>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t3       <bool> %ebp-17 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 57 of <array 15 of <array 85 of <array 39 of <array 19 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 88 of <array 72 of <array 78 of <array 67 of <array 71 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <char> %ebp+20 ]
    #    -18(%ebp)   1  [ $v4       <bool> %ebp-18 ]

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
    leal    _str_1, %eax            #   0:     &()    t2 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  0 <- t2
    pushl   %eax                   
    call    WriteStr                #   2:     call   WriteStr
    addl    $4, %esp               
l_f1_2_while_cond:
    jmp     l_f1_3_while_body       #   4:     goto   3_while_body
    jmp     l_f1_1                  #   5:     goto   1
l_f1_3_while_body:
    movl    $73947, %eax            #   7:     if     73947 <= 4877 goto 6
    movl    $4877, %ebx            
    cmpl    %ebx, %eax             
    jle     l_f1_6                 
    jmp     l_f1_7                  #   8:     goto   7
l_f1_6:
    movl    $1, %eax                #  10:     assign t3 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f1_8                  #  11:     goto   8
l_f1_7:
    movl    $0, %eax                #  13:     assign t3 <- 0
    movb    %al, -17(%ebp)         
l_f1_8:
    movzbl  -17(%ebp), %eax         #  15:     assign v4 <- t3
    movb    %al, -18(%ebp)         
    movl    $71759, %eax            #  16:     param  0 <- 71759
    pushl   %eax                   
    call    WriteInt                #  17:     call   WriteInt
    addl    $4, %esp               
    movl    $99, %eax               #  18:     assign v0 <- 99
    movb    %al, 8(%ebp)           
l_f1_13_while_cond:
    movl    $99, %eax               #  20:     if     99 <= 98 goto 14_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_14_while_body     
    jmp     l_f1_12                 #  21:     goto   12
l_f1_14_while_body:
    jmp     l_f1_13_while_cond      #  23:     goto   13_while_cond
l_f1_12:
    movl    $42600, %eax            #  25:     if     42600 = 96797 goto 17_if_true
    movl    $96797, %ebx           
    cmpl    %ebx, %eax             
    je      l_f1_17_if_true        
    jmp     l_f1_18_if_false        #  26:     goto   18_if_false
l_f1_17_if_true:
    jmp     l_f1_16                 #  28:     goto   16
l_f1_18_if_false:
l_f1_16:
    jmp     l_f1_2_while_cond       #  31:     goto   2_while_cond
l_f1_1:
    movl    $0, %eax                #  33:     assign v4 <- 0
    movb    %al, -18(%ebp)         

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
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <ptr(4) to <array 88 of <array 72 of <array 78 of <array 67 of <array 71 of <int>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <ptr(4) to <array 57 of <array 15 of <array 85 of <array 39 of <array 19 of <char>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t6       <bool> %ebp-29 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #   -53852228(%ebp)  53852199  [ $v1       <array 57 of <array 15 of <array 85 of <array 39 of <array 19 of <char>>>>>> %ebp-53852228 ]
    #   -867707484(%ebp)  813855256  [ $v2       <array 88 of <array 72 of <array 78 of <array 67 of <array 71 of <int>>>>>> %ebp-867707484 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $867707472, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $216926868, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-53852228(%ebp)      # local array 'v1': 5 dimensions
    movl    $57,-53852224(%ebp)     #   dimension 1: 57 elements
    movl    $15,-53852220(%ebp)     #   dimension 2: 15 elements
    movl    $85,-53852216(%ebp)     #   dimension 3: 85 elements
    movl    $39,-53852212(%ebp)     #   dimension 4: 39 elements
    movl    $19,-53852208(%ebp)     #   dimension 5: 19 elements
    movl    $5,-867707484(%ebp)     # local array 'v2': 5 dimensions
    movl    $88,-867707480(%ebp)    #   dimension 1: 88 elements
    movl    $72,-867707476(%ebp)    #   dimension 2: 72 elements
    movl    $78,-867707472(%ebp)    #   dimension 3: 78 elements
    movl    $67,-867707468(%ebp)    #   dimension 4: 67 elements
    movl    $71,-867707464(%ebp)    #   dimension 5: 71 elements

    # function body
    movl    $1, %eax                #   0:     assign v0 <- 1
    movb    %al, 8(%ebp)           
    call    dummyCHARfunc           #   1:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
l_f2_3_while_cond:
    movl    $87588, %eax            #   3:     sub    t3 <- 87588, 67661
    movl    $67661, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     if     t3 <= 93240 goto 4_while_body
    movl    $93240, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_4_while_body      
    jmp     l_f2_2                  #   5:     goto   2
l_f2_4_while_body:
    movl    $99, %eax               #   7:     param  3 <- 99
    pushl   %eax                   
    leal    -867707484(%ebp), %eax  #   8:     &()    t4 <- v2
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   9:     param  2 <- t4
    pushl   %eax                   
    leal    -53852228(%ebp), %eax   #  10:     &()    t5 <- v1
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  11:     param  1 <- t5
    pushl   %eax                   
    movl    $100, %eax              #  12:     param  0 <- 100
    pushl   %eax                   
    call    f1                      #  13:     call   t6 <- f1
    addl    $16, %esp              
    movb    %al, -29(%ebp)         
    jmp     l_f2_3_while_cond       #  14:     goto   3_while_cond
l_f2_2:

l_f2_exit:
    # epilogue
    addl    $867707472, %esp        # remove locals
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
    movl    $27014, %eax            #   0:     div    t0 <- 27014, 42271
    movl    $42271, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     assign v0 <- t0
    movl    %eax, v0               
    movl    $100, %eax              #   2:     if     100 < 97 goto 2_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_2_if_true       
    jmp     l_test_3_if_false       #   3:     goto   3_if_false
l_test_2_if_true:
    jmp     l_test_7_if_false       #   5:     goto   7_if_false
l_test_9_while_cond:
    movl    $97, %eax               #   7:     if     97 # 97 goto 10_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_10_while_body   
    jmp     l_test_8                #   8:     goto   8
l_test_10_while_body:
    jmp     l_test_9_while_cond     #  10:     goto   9_while_cond
l_test_8:
    jmp     l_test_exit            
    call    ReadInt                 #  13:     call   t1 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    $98, %eax               #  14:     assign v1 <- 98
    movb    %al, v1                
    jmp     l_test_5                #  15:     goto   5
l_test_7_if_false:
l_test_5:
    jmp     l_test_1                #  18:     goto   1
l_test_3_if_false:
l_test_1:
    movl    $100, %eax              #  21:     assign v1 <- 100
    movb    %al, v1                

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
_str_1:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"
    .align   4
v0:                                 # <int>
    .skip    4
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
