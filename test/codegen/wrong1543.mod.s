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
    #    -13(%ebp)   1  [ $t6       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t7       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t8       <int> %ebp-24 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 11 of <array 12 of <array 12 of <array 76 of <array 76 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]

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
    call    dummyCHARfunc           #   0:     call   t6 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t6
    jmp     l_f0_exit              
    movl    $7881, %eax             #   2:     sub    t7 <- 7881, 34373
    movl    $34373, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     add    t8 <- t7, 63992
    movl    $63992, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     assign v1 <- t8
    movl    %eax, 12(%ebp)         
    movl    $94591, %eax            #   5:     assign v1 <- 94591
    movl    %eax, 12(%ebp)         

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
    #    -16(%ebp)   4  [ $t6       <ptr(4) to <array 11 of <array 12 of <array 12 of <array 76 of <array 76 of <char>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t7       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t8       <bool> %ebp-18 ]
    #    -19(%ebp)   1  [ $t9       <bool> %ebp-19 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 8 of <array 91 of <array 8 of <array 48 of <array 97 of <bool>>>>>>> %ebp+8 ]
    #    -20(%ebp)   1  [ $v1       <char> %ebp-20 ]
    #   -9149228(%ebp)  9149208  [ $v2       <array 11 of <array 12 of <array 12 of <array 76 of <array 76 of <char>>>>>> %ebp-9149228 ]
    #   -9149229(%ebp)   1  [ $v3       <bool> %ebp-9149229 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $9149220, %esp          # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $2287305, %ecx         
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-9149228(%ebp)       # local array 'v2': 5 dimensions
    movl    $11,-9149224(%ebp)      #   dimension 1: 11 elements
    movl    $12,-9149220(%ebp)      #   dimension 2: 12 elements
    movl    $12,-9149216(%ebp)      #   dimension 3: 12 elements
    movl    $76,-9149212(%ebp)      #   dimension 4: 76 elements
    movl    $76,-9149208(%ebp)      #   dimension 5: 76 elements

    # function body
    movl    $54052, %eax            #   0:     param  1 <- 54052
    pushl   %eax                   
    leal    -9149228(%ebp), %eax    #   1:     &()    t6 <- v2
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     param  0 <- t6
    pushl   %eax                   
    call    f0                      #   3:     call   t7 <- f0
    addl    $8, %esp               
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   4:     assign v1 <- t7
    movb    %al, -20(%ebp)         
l_f1_2_while_cond:
    jmp     l_f1_1                  #   6:     goto   1
    call    dummyProcedure          #   7:     call   dummyProcedure
    movl    $85870, %eax            #   8:     if     85870 = 44842 goto 7
    movl    $44842, %ebx           
    cmpl    %ebx, %eax             
    je      l_f1_7                 
    jmp     l_f1_8                  #   9:     goto   8
l_f1_7:
    movl    $1, %eax                #  11:     assign t8 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f1_9                  #  12:     goto   9
l_f1_8:
    movl    $0, %eax                #  14:     assign t8 <- 0
    movb    %al, -18(%ebp)         
l_f1_9:
    movzbl  -18(%ebp), %eax         #  16:     assign v3 <- t8
    movb    %al, -9149229(%ebp)    
    jmp     l_f1_2_while_cond       #  17:     goto   2_while_cond
l_f1_1:
    call    dummyBOOLfunc           #  19:     call   t9 <- dummyBOOLfunc
    movb    %al, -19(%ebp)         

l_f1_exit:
    # epilogue
    addl    $9149220, %esp          # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t6       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t7       <bool> %ebp-17 ]

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
l_f2_1_while_cond:
    movl    $0, %eax                #   1:     if     0 # 0 goto 2_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_2_while_body      
    jmp     l_f2_0                  #   2:     goto   0
l_f2_2_while_body:
l_f2_5_while_cond:
    movl    $54227, %eax            #   5:     if     54227 <= 9981 goto 6_while_body
    movl    $9981, %ebx            
    cmpl    %ebx, %eax             
    jle     l_f2_6_while_body      
    jmp     l_f2_4                  #   6:     goto   4
l_f2_6_while_body:
    jmp     l_f2_5_while_cond       #   8:     goto   5_while_cond
l_f2_4:
l_f2_9_while_cond:
    movl    $98, %eax               #  11:     if     98 < 99 goto 10_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_10_while_body     
    jmp     l_f2_8                  #  12:     goto   8
l_f2_10_while_body:
    jmp     l_f2_9_while_cond       #  14:     goto   9_while_cond
l_f2_8:
    call    ReadInt                 #  16:     call   t6 <- ReadInt
    movl    %eax, -16(%ebp)        
    jmp     l_f2_1_while_cond       #  17:     goto   1_while_cond
l_f2_0:
    movl    $97, %eax               #  19:     if     97 > 97 goto 14_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_14_if_true        
    jmp     l_f2_15_if_false        #  20:     goto   15_if_false
l_f2_14_if_true:
    jmp     l_f2_exit              
    jmp     l_f2_13                 #  23:     goto   13
l_f2_15_if_false:
l_f2_13:
    call    dummyBOOLfunc           #  26:     call   t7 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         

l_f2_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 5 of <char>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t3       <char> %ebp-22 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t5       <char> %ebp-29 ]

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
l_test_1_while_cond:
    call    dummyBOOLfunc           #   1:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t0 = 1 goto 2_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_2_while_body    
    jmp     l_test_0                #   3:     goto   0
l_test_2_while_body:
    leal    _str_1, %eax            #   5:     &()    t1 <- _str_1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   6:     param  0 <- t1
    pushl   %eax                   
    call    WriteStr                #   7:     call   WriteStr
    addl    $4, %esp               
    jmp     l_test_1_while_cond     #   8:     goto   1_while_cond
l_test_0:
    call    dummyBOOLfunc           #  10:     call   t2 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         
    call    dummyCHARfunc           #  11:     call   t3 <- dummyCHARfunc
    movb    %al, -22(%ebp)         
    call    ReadInt                 #  12:     call   t4 <- ReadInt
    movl    %eax, -28(%ebp)        
    jmp     l_test_exit            
    call    dummyCHARfunc           #  14:     call   t5 <- dummyCHARfunc
    movb    %al, -29(%ebp)         
    movzbl  -29(%ebp), %eax         #  15:     assign v0 <- t5
    movb    %al, v0                

l_test_exit:
    # epilogue
    addl    $20, %esp               # remove locals
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
v0:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
