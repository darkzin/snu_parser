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
    #    -13(%ebp)   1  [ $t4       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 54 of <array 35 of <array 26 of <array 68 of <array 31 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]
    #    -24(%ebp)   4  [ $v4       <int> %ebp-24 ]

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
    movl    $2999, %eax             #   0:     param  0 <- 2999
    pushl   %eax                   
    call    WriteInt                #   1:     call   WriteInt
    addl    $4, %esp               
    call    dummyCHARfunc           #   2:     call   t4 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   3:     assign v2 <- t4
    movb    %al, 12(%ebp)          
    movl    $17992, %eax            #   4:     sub    t5 <- 17992, 90041
    movl    $90041, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   5:     assign v4 <- t5
    movl    %eax, -24(%ebp)        

l_f0_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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
    #    -15(%ebp)   1  [ $t6       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t7       <char> %ebp-16 ]
    #    -17(%ebp)   1  [ $t8       <bool> %ebp-17 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 5 of <array 59 of <array 17 of <array 57 of <array 1 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]

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
    call    dummyBOOLfunc           #   0:     call   t4 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     if     t4 = 1 goto 8
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_8                 
    jmp     l_f1_6                  #   2:     goto   6
l_f1_8:
    movl    $1, %eax                #   4:     assign t5 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_7                  #   5:     goto   7
l_f1_6:
    movl    $0, %eax                #   7:     assign t5 <- 0
    movb    %al, -14(%ebp)         
l_f1_7:
    movzbl  -14(%ebp), %eax         #   9:     if     t5 = 0 goto 1
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_1                 
    jmp     l_f1_2                  #  10:     goto   2
l_f1_1:
    movl    $1, %eax                #  12:     assign t6 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f1_3                  #  13:     goto   3
l_f1_2:
    movl    $0, %eax                #  15:     assign t6 <- 0
    movb    %al, -15(%ebp)         
l_f1_3:
    movzbl  -15(%ebp), %eax         #  17:     return t6
    jmp     l_f1_exit              
    call    dummyCHARfunc           #  18:     call   t7 <- dummyCHARfunc
    movb    %al, -16(%ebp)         
    movl    $98, %eax               #  19:     if     98 # t7 goto 10
    movzbl  -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f1_10                
    jmp     l_f1_11                 #  20:     goto   11
l_f1_10:
    movl    $1, %eax                #  22:     assign t8 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f1_12                 #  23:     goto   12
l_f1_11:
    movl    $0, %eax                #  25:     assign t8 <- 0
    movb    %al, -17(%ebp)         
l_f1_12:
    movzbl  -17(%ebp), %eax         #  27:     return t8
    jmp     l_f1_exit              
l_f1_15_while_cond:
    jmp     l_f1_16_while_body      #  29:     goto   16_while_body
l_f1_16_while_body:
    movl    $0, %eax                #  31:     return 0
    jmp     l_f1_exit              
    jmp     l_f1_15_while_cond      #  32:     goto   15_while_cond

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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t11      <ptr(4) to <array 5 of <array 59 of <array 17 of <array 57 of <array 1 of <bool>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t12      <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t5       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t6       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t7       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t8       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t9       <int> %ebp-48 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 52 of <array 22 of <array 46 of <array 46 of <array 70 of <int>>>>>>> %ebp+8 ]
    #   -285928(%ebp)  285879  [ $v2       <array 5 of <array 59 of <array 17 of <array 57 of <array 1 of <bool>>>>>> %ebp-285928 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $285916, %esp           # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $71479, %ecx           
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-285928(%ebp)        # local array 'v2': 5 dimensions
    movl    $5,-285924(%ebp)        #   dimension 1: 5 elements
    movl    $59,-285920(%ebp)       #   dimension 2: 59 elements
    movl    $17,-285916(%ebp)       #   dimension 3: 17 elements
    movl    $57,-285912(%ebp)       #   dimension 4: 57 elements
    movl    $1,-285908(%ebp)        #   dimension 5: 1 elements

    # function body
l_f2_1_while_cond:
    movl    $72025, %eax            #   1:     add    t4 <- 72025, 62534
    movl    $62534, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   2:     sub    t5 <- t4, 925
    movl    $925, %ebx             
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   3:     add    t6 <- t5, 11331
    movl    $11331, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   4:     sub    t7 <- t6, 23130
    movl    $23130, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   5:     add    t8 <- t7, 73012
    movl    $73012, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   6:     sub    t9 <- t8, 95546
    movl    $95546, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #   7:     if     t9 < 63127 goto 2_while_body
    movl    $63127, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_2_while_body      
    jmp     l_f2_0                  #   8:     goto   0
l_f2_2_while_body:
    jmp     l_f2_1_while_cond       #  10:     goto   1_while_cond
l_f2_0:
    call    dummyBOOLfunc           #  12:     call   t10 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $17240, %eax            #  13:     param  1 <- 17240
    pushl   %eax                   
    leal    -285928(%ebp), %eax     #  14:     &()    t11 <- v2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  15:     param  0 <- t11
    pushl   %eax                   
    call    f1                      #  16:     call   t12 <- f1
    addl    $8, %esp               
    movb    %al, -21(%ebp)         

l_f2_exit:
    # epilogue
    addl    $285916, %esp           # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]

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
    movl    $99, %eax               #   1:     if     99 # 98 goto 2_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_2_while_body    
    jmp     l_test_0                #   2:     goto   0
l_test_2_while_body:
    jmp     l_test_1_while_cond     #   4:     goto   1_while_cond
l_test_0:
l_test_6_while_cond:
    movl    $37832, %eax            #   7:     assign v0 <- 37832
    movl    %eax, v0               
    jmp     l_test_6_while_cond     #   8:     goto   6_while_cond
l_test_10_while_cond:
    jmp     l_test_13               #  10:     goto   13
    jmp     l_test_13               #  11:     goto   13
    jmp     l_test_14               #  12:     goto   14
l_test_13:
    movl    $1, %eax                #  14:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_15               #  15:     goto   15
l_test_14:
    movl    $0, %eax                #  17:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_15:
    movzbl  -13(%ebp), %eax         #  19:     if     t0 = 1 goto 11_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_11_while_body   
    jmp     l_test_9                #  20:     goto   9
l_test_11_while_body:
    movl    $99, %eax               #  22:     if     99 # 100 goto 19_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_test_19_if_true      
    jmp     l_test_20_if_false      #  23:     goto   20_if_false
l_test_19_if_true:
    jmp     l_test_18               #  25:     goto   18
l_test_20_if_false:
l_test_18:
    movl    $41622, %eax            #  28:     if     41622 >= 2088 goto 23_if_true
    movl    $2088, %ebx            
    cmpl    %ebx, %eax             
    jge     l_test_23_if_true      
    jmp     l_test_24_if_false      #  29:     goto   24_if_false
l_test_23_if_true:
    jmp     l_test_22               #  31:     goto   22
l_test_24_if_false:
l_test_22:
    call    dummyBOOLfunc           #  34:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    jmp     l_test_10_while_cond    #  35:     goto   10_while_cond
l_test_9:
    call    dummyINTfunc            #  37:     call   t2 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
l_test_29_while_cond:
l_test_32_while_cond:
    movl    $97918, %eax            #  40:     if     97918 = 66830 goto 33_while_body
    movl    $66830, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_33_while_body   
    jmp     l_test_31               #  41:     goto   31
l_test_33_while_body:
l_test_36_while_cond:
    movl    $3334, %eax             #  44:     if     3334 <= 94425 goto 37_while_body
    movl    $94425, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_37_while_body   
    jmp     l_test_35               #  45:     goto   35
l_test_37_while_body:
    jmp     l_test_36_while_cond    #  47:     goto   36_while_cond
l_test_35:
    jmp     l_test_32_while_cond    #  49:     goto   32_while_cond
l_test_31:
    jmp     l_test_29_while_cond    #  51:     goto   29_while_cond
    call    dummyINTfunc            #  52:     call   t3 <- dummyINTfunc
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  53:     assign v0 <- t3
    movl    %eax, v0               

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

    # scope: test
v0:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
