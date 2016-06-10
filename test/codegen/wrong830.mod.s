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
    #    -13(%ebp)   1  [ $t7       <char> %ebp-13 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #    -20(%ebp)   4  [ $v1       <int> %ebp-20 ]

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
    jmp     l_f0_2_if_false         #   0:     goto   2_if_false
    movl    $4723, %eax             #   1:     assign v1 <- 4723
    movl    %eax, -20(%ebp)        
    jmp     l_f0_4                  #   2:     goto   4
l_f0_4:
l_f0_8_while_cond:
    movl    $21276, %eax            #   5:     if     21276 = 40438 goto 9_while_body
    movl    $40438, %ebx           
    cmpl    %ebx, %eax             
    je      l_f0_9_while_body      
    jmp     l_f0_7                  #   6:     goto   7
l_f0_9_while_body:
    jmp     l_f0_8_while_cond       #   8:     goto   8_while_cond
l_f0_7:
    movl    $6797, %eax             #  10:     return 6797
    jmp     l_f0_exit              
    jmp     l_f0_0                  #  11:     goto   0
l_f0_2_if_false:
l_f0_0:
    call    dummyProcedure          #  14:     call   dummyProcedure
    call    dummyCHARfunc           #  15:     call   t7 <- dummyCHARfunc
    movb    %al, -13(%ebp)         

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
    #    -13(%ebp)   1  [ $t7       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t8       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t9       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 4 of <array 1 of <array 1 of <array 7 of <array 1 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 10 of <array 1 of <array 7 of <array 6 of <array 6 of <int>>>>>>> %ebp+12 ]
    #    -24(%ebp)   4  [ $v2       <int> %ebp-24 ]

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
    movl    $26431, %eax            #   0:     if     26431 > 46522 goto 1_if_true
    movl    $46522, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
    movl    $18274, %eax            #   3:     assign v2 <- 18274
    movl    %eax, -24(%ebp)        
l_f1_6_while_cond:
    movl    $100, %eax              #   5:     if     100 < 97 goto 7_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_7_while_body      
    jmp     l_f1_5                  #   6:     goto   5
l_f1_7_while_body:
    jmp     l_f1_6_while_cond       #   8:     goto   6_while_cond
l_f1_5:
    movl    $96470, %eax            #  10:     if     96470 > 69090 goto 10_if_true
    movl    $69090, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_10_if_true        
    jmp     l_f1_11_if_false        #  11:     goto   11_if_false
l_f1_10_if_true:
    jmp     l_f1_9                  #  13:     goto   9
l_f1_11_if_false:
l_f1_9:
    jmp     l_f1_0                  #  16:     goto   0
l_f1_2_if_false:
l_f1_0:
    call    dummyCHARfunc           #  19:     call   t7 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $99, %eax               #  20:     if     99 # t7 goto 14
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f1_14                
    jmp     l_f1_15                 #  21:     goto   15
l_f1_14:
    movl    $1, %eax                #  23:     assign t8 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_16                 #  24:     goto   16
l_f1_15:
    movl    $0, %eax                #  26:     assign t8 <- 0
    movb    %al, -14(%ebp)         
l_f1_16:
    movzbl  -14(%ebp), %eax         #  28:     return t8
    jmp     l_f1_exit              
    movl    $77737, %eax            #  29:     if     77737 > 68028 goto 19_if_true
    movl    $68028, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_19_if_true        
    jmp     l_f1_20_if_false        #  30:     goto   20_if_false
l_f1_19_if_true:
    jmp     l_f1_22                 #  32:     goto   22
l_f1_22:
    jmp     l_f1_27_if_false        #  34:     goto   27_if_false
    jmp     l_f1_25                 #  35:     goto   25
l_f1_27_if_false:
l_f1_25:
    jmp     l_f1_28                 #  38:     goto   28
l_f1_28:
    movl    $99, %eax               #  40:     param  0 <- 99
    pushl   %eax                   
    call    f0                      #  41:     call   t9 <- f0
    addl    $4, %esp               
    movl    %eax, -20(%ebp)        
    jmp     l_f1_18                 #  42:     goto   18
l_f1_20_if_false:
l_f1_18:

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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t7       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t8       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t9       <int> %ebp-32 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 10 of <array 3 of <array 4 of <array 10 of <array 4 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]

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
    call    dummyBOOLfunc           #   0:     call   t7 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         
    movl    $7878, %eax             #   1:     sub    t8 <- 7878, 34402
    movl    $34402, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   2:     add    t9 <- t8, 53702
    movl    $53702, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   3:     return t9
    jmp     l_f2_exit              
l_f2_3_while_cond:
    movl    $52230, %eax            #   5:     add    t10 <- 52230, 92559
    movl    $92559, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    call    dummyINTfunc            #   6:     call   t11 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #   7:     if     t10 > t11 goto 4_while_body
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f2_4_while_body      
    jmp     l_f2_2                  #   8:     goto   2
l_f2_4_while_body:
    jmp     l_f2_3_while_cond       #  10:     goto   3_while_cond
l_f2_2:

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
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t4       <bool> %ebp-29 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t6       <int> %ebp-40 ]

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
    jmp     l_test_exit            
l_test_2_while_cond:
    movl    $85300, %eax            #   2:     div    t0 <- 85300, 51475
    movl    $51475, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   3:     div    t1 <- t0, 39615
    movl    $39615, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    call    dummyINTfunc            #   4:     call   t2 <- dummyINTfunc
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #   5:     mul    t3 <- t1, t2
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    $11547, %eax            #   6:     if     11547 <= t3 goto 3_while_body
    movl    -28(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_test_3_while_body    
    jmp     l_test_1                #   7:     goto   1
l_test_3_while_body:
    jmp     l_test_2_while_cond     #   9:     goto   2_while_cond
l_test_1:
    movl    $70476, %eax            #  11:     if     70476 # 93598 goto 6
    movl    $93598, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_6               
    jmp     l_test_7                #  12:     goto   7
l_test_6:
    movl    $1, %eax                #  14:     assign t4 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_test_8                #  15:     goto   8
l_test_7:
    movl    $0, %eax                #  17:     assign t4 <- 0
    movb    %al, -29(%ebp)         
l_test_8:
    movzbl  -29(%ebp), %eax         #  19:     assign v0 <- t4
    movb    %al, v0                
    movl    $56242, %eax            #  20:     div    t5 <- 56242, 80228
    movl    $80228, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  21:     div    t6 <- t5, 10075
    movl    $10075, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  22:     assign v1 <- t6
    movl    %eax, v1               

l_test_exit:
    # epilogue
    addl    $28, %esp               # remove locals
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
v0:                                 # <bool>
    .skip    1
    .align   4
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
