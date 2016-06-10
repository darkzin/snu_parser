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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t8       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t9       <int> %ebp-24 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 6 of <array 1 of <array 6 of <array 5 of <array 9 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 5 of <array 10 of <array 7 of <array 4 of <array 1 of <bool>>>>>>> %ebp+16 ]
    #    -25(%ebp)   1  [ $v4       <bool> %ebp-25 ]

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
    movl    $98, %eax               #   0:     assign v1 <- 98
    movb    %al, 8(%ebp)           
    jmp     l_f0_3_if_false         #   1:     goto   3_if_false
    movl    $98, %eax               #   2:     if     98 > 100 goto 6_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f0_6_if_true         
    jmp     l_f0_7_if_false         #   3:     goto   7_if_false
l_f0_6_if_true:
    jmp     l_f0_5                  #   5:     goto   5
l_f0_7_if_false:
l_f0_5:
    jmp     l_f0_1                  #   8:     goto   1
l_f0_3_if_false:
l_f0_1:
    call    ReadInt                 #  11:     call   t8 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    $71155, %eax            #  12:     add    t9 <- 71155, 52508
    movl    $52508, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  13:     if     t8 <= t9 goto 10
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f0_10                
    jmp     l_f0_11                 #  14:     goto   11
l_f0_10:
    movl    $1, %eax                #  16:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_12                 #  17:     goto   12
l_f0_11:
    movl    $0, %eax                #  19:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f0_12:
    movzbl  -13(%ebp), %eax         #  21:     assign v4 <- t10
    movb    %al, -25(%ebp)         

l_f0_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t8       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t9       <ptr(4) to <array 5 of <char>>> %ebp-20 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 10 of <array 1 of <array 2 of <array 5 of <array 2 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 7 of <array 7 of <array 8 of <array 4 of <array 7 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 1 of <array 5 of <array 4 of <array 5 of <array 3 of <int>>>>>>> %ebp+16 ]

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
    call    dummyINTfunc            #   0:     call   t8 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $100, %eax              #   1:     return 100
    jmp     l_f1_exit              
    leal    _str_1, %eax            #   2:     &()    t9 <- _str_1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     param  0 <- t9
    pushl   %eax                   
    call    WriteStr                #   4:     call   WriteStr
    addl    $4, %esp               

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
    #    -16(%ebp)   4  [ $t10      <ptr(4) to <array 7 of <array 7 of <array 8 of <array 4 of <array 7 of <bool>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <ptr(4) to <array 10 of <array 1 of <array 2 of <array 5 of <array 2 of <bool>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t12      <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t8       <char> %ebp-22 ]
    #    -28(%ebp)   4  [ $t9       <ptr(4) to <array 1 of <array 5 of <array 4 of <array 5 of <array 3 of <int>>>>>>> %ebp-28 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 7 of <array 2 of <array 4 of <array 3 of <array 1 of <char>>>>>>> %ebp+8 ]
    #    -29(%ebp)   1  [ $v2       <char> %ebp-29 ]
    #   -256(%ebp)  224  [ $v3       <array 10 of <array 1 of <array 2 of <array 5 of <array 2 of <bool>>>>>> %ebp-256 ]
    #   -11256(%ebp)  11000  [ $v4       <array 7 of <array 7 of <array 8 of <array 4 of <array 7 of <bool>>>>>> %ebp-11256 ]
    #   -12480(%ebp)  1224  [ $v5       <array 1 of <array 5 of <array 4 of <array 5 of <array 3 of <int>>>>>> %ebp-12480 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $12468, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $3117, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-256(%ebp)           # local array 'v3': 5 dimensions
    movl    $10,-252(%ebp)          #   dimension 1: 10 elements
    movl    $1,-248(%ebp)           #   dimension 2: 1 elements
    movl    $2,-244(%ebp)           #   dimension 3: 2 elements
    movl    $5,-240(%ebp)           #   dimension 4: 5 elements
    movl    $2,-236(%ebp)           #   dimension 5: 2 elements
    movl    $5,-11256(%ebp)         # local array 'v4': 5 dimensions
    movl    $7,-11252(%ebp)         #   dimension 1: 7 elements
    movl    $7,-11248(%ebp)         #   dimension 2: 7 elements
    movl    $8,-11244(%ebp)         #   dimension 3: 8 elements
    movl    $4,-11240(%ebp)         #   dimension 4: 4 elements
    movl    $7,-11236(%ebp)         #   dimension 5: 7 elements
    movl    $5,-12480(%ebp)         # local array 'v5': 5 dimensions
    movl    $1,-12476(%ebp)         #   dimension 1: 1 elements
    movl    $5,-12472(%ebp)         #   dimension 2: 5 elements
    movl    $4,-12468(%ebp)         #   dimension 3: 4 elements
    movl    $5,-12464(%ebp)         #   dimension 4: 5 elements
    movl    $3,-12460(%ebp)         #   dimension 5: 3 elements

    # function body
    call    dummyCHARfunc           #   0:     call   t8 <- dummyCHARfunc
    movb    %al, -22(%ebp)         
    movzbl  -22(%ebp), %eax         #   1:     return t8
    jmp     l_f2_exit              
l_f2_2_while_cond:
    movl    $57098, %eax            #   3:     if     57098 > 56051 goto 3_while_body
    movl    $56051, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_3_while_body      
    jmp     l_f2_1                  #   4:     goto   1
l_f2_3_while_body:
    movl    $98, %eax               #   6:     assign v2 <- 98
    movb    %al, -29(%ebp)         
    leal    -12480(%ebp), %eax      #   7:     &()    t9 <- v5
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   8:     param  2 <- t9
    pushl   %eax                   
    leal    -11256(%ebp), %eax      #   9:     &()    t10 <- v4
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  10:     param  1 <- t10
    pushl   %eax                   
    leal    -256(%ebp), %eax        #  11:     &()    t11 <- v3
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  12:     param  0 <- t11
    pushl   %eax                   
    call    f1                      #  13:     call   t12 <- f1
    addl    $12, %esp              
    movb    %al, -21(%ebp)         
l_f2_8_while_cond:
    jmp     l_f2_8_while_cond       #  15:     goto   8_while_cond
    jmp     l_f2_2_while_cond       #  16:     goto   2_while_cond
l_f2_1:
    movl    $99, %eax               #  18:     return 99
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $12468, %esp            # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t3       <bool> %ebp-25 ]
    #    -32(%ebp)   4  [ $t4       <ptr(4) to <array 1 of <array 5 of <array 4 of <array 5 of <array 3 of <int>>>>>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <ptr(4) to <array 7 of <array 7 of <array 8 of <array 4 of <array 7 of <bool>>>>>>> %ebp-36 ]
    #    -40(%ebp)   4  [ $t6       <ptr(4) to <array 10 of <array 1 of <array 2 of <array 5 of <array 2 of <bool>>>>>>> %ebp-40 ]
    #    -41(%ebp)   1  [ $t7       <char> %ebp-41 ]

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
    jmp     l_test_4                #   0:     goto   4
    jmp     l_test_4                #   1:     goto   4
    jmp     l_test_4                #   2:     goto   4
l_test_4:
    movl    $1, %eax                #   4:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_6                #   5:     goto   6
    movl    $0, %eax                #   6:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_6:
    movzbl  -13(%ebp), %eax         #   8:     if     t0 # 0 goto 1_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_1_if_true       
    jmp     l_test_2_if_false       #   9:     goto   2_if_false
l_test_1_if_true:
    jmp     l_test_exit            
    jmp     l_test_0                #  12:     goto   0
l_test_2_if_false:
l_test_0:
    movl    $87701, %eax            #  15:     sub    t1 <- 87701, 87304
    movl    $87304, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  16:     sub    t2 <- t1, 81379
    movl    $81379, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  17:     assign v0 <- t2
    movl    %eax, v0               
l_test_13_while_cond:
    jmp     l_test_14_while_body    #  19:     goto   14_while_body
    jmp     l_test_12               #  20:     goto   12
l_test_14_while_body:
l_test_18_while_cond:
    movl    $44224, %eax            #  23:     if     44224 > 13367 goto 19_while_body
    movl    $13367, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_19_while_body   
    jmp     l_test_17               #  24:     goto   17
l_test_19_while_body:
    jmp     l_test_18_while_cond    #  26:     goto   18_while_cond
l_test_17:
    jmp     l_test_21               #  28:     goto   21
l_test_21:
    movl    $1, %eax                #  30:     if     1 # 1 goto 25
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_25              
    jmp     l_test_26               #  31:     goto   26
l_test_25:
    movl    $1, %eax                #  33:     assign t3 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_test_27               #  34:     goto   27
l_test_26:
    movl    $0, %eax                #  36:     assign t3 <- 0
    movb    %al, -25(%ebp)         
l_test_27:
    movzbl  -25(%ebp), %eax         #  38:     assign v1 <- t3
    movb    %al, v1                
    jmp     l_test_13_while_cond    #  39:     goto   13_while_cond
l_test_12:
    movl    $1, %eax                #  41:     if     1 = 0 goto 30_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_30_if_true      
    jmp     l_test_31_if_false      #  42:     goto   31_if_false
l_test_30_if_true:
    jmp     l_test_exit            
    movl    $97, %eax               #  45:     assign v2 <- 97
    movb    %al, v2                
    leal    v5, %eax                #  46:     &()    t4 <- v5
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  47:     param  2 <- t4
    pushl   %eax                   
    leal    v4, %eax                #  48:     &()    t5 <- v4
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  49:     param  1 <- t5
    pushl   %eax                   
    leal    v3, %eax                #  50:     &()    t6 <- v3
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  51:     param  0 <- t6
    pushl   %eax                   
    call    f1                      #  52:     call   t7 <- f1
    addl    $12, %esp              
    movb    %al, -41(%ebp)         
l_test_37_while_cond:
    movl    $11885, %eax            #  54:     if     11885 = 41289 goto 38_while_body
    movl    $41289, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_38_while_body   
    jmp     l_test_36               #  55:     goto   36
l_test_38_while_body:
    jmp     l_test_37_while_cond    #  57:     goto   37_while_cond
l_test_36:
    jmp     l_test_29               #  59:     goto   29
l_test_31_if_false:
l_test_29:
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $32, %esp               # remove locals
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
_str_1:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
    .align   4
v0:                                 # <int>
    .skip    4
v1:                                 # <bool>
    .skip    1
v2:                                 # <char>
    .skip    1
    .align   4
v3:                                 # <array 10 of <array 1 of <array 2 of <array 5 of <array 2 of <bool>>>>>>
    .long    5
    .long   10
    .long    1
    .long    2
    .long    5
    .long    2
    .skip  200
v4:                                 # <array 7 of <array 7 of <array 8 of <array 4 of <array 7 of <bool>>>>>>
    .long    5
    .long    7
    .long    7
    .long    8
    .long    4
    .long    7
    .skip 10976
v5:                                 # <array 1 of <array 5 of <array 4 of <array 5 of <array 3 of <int>>>>>>
    .long    5
    .long    1
    .long    5
    .long    4
    .long    5
    .long    3
    .skip 1200








    # end of global data section
    #-----------------------------------------

    .end
##################################################
