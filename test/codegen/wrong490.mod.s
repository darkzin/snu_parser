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
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <char> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 9 of <array 2 of <array 1 of <array 3 of <array 7 of <int>>>>>>> %ebp+8 ]
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
    call    dummyCHARfunc           #   0:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t3
    jmp     l_f0_exit              
    jmp     l_f0_3_if_false         #   2:     goto   3_if_false
    movl    $37120, %eax            #   3:     assign v1 <- 37120
    movl    %eax, -20(%ebp)        
    movl    $100, %eax              #   4:     return 100
    jmp     l_f0_exit              
    jmp     l_f0_1                  #   5:     goto   1
l_f0_3_if_false:
l_f0_1:
    call    dummyCHARfunc           #   8:     call   t4 <- dummyCHARfunc
    movb    %al, -14(%ebp)         

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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <ptr(4) to <array 5 of <char>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t5       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $v0       <bool> %ebp-29 ]

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
    jmp     l_f1_2_if_false         #   0:     goto   2_if_false
    call    dummyINTfunc            #   1:     call   t3 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    jmp     l_f1_exit              
l_f1_7_while_cond:
    movl    $76150, %eax            #   4:     if     76150 > 34077 goto 8_while_body
    movl    $34077, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_8_while_body      
    jmp     l_f1_6                  #   5:     goto   6
l_f1_8_while_body:
    jmp     l_f1_7_while_cond       #   7:     goto   7_while_cond
l_f1_6:
    leal    _str_1, %eax            #   9:     &()    t4 <- _str_1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  10:     param  0 <- t4
    pushl   %eax                   
    call    WriteStr                #  11:     call   WriteStr
    addl    $4, %esp               
    movl    $1, %eax                #  12:     if     1 = 1 goto 12_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_12_if_true        
    jmp     l_f1_13_if_false        #  13:     goto   13_if_false
l_f1_12_if_true:
    jmp     l_f1_11                 #  15:     goto   11
l_f1_13_if_false:
l_f1_11:
    jmp     l_f1_0                  #  18:     goto   0
l_f1_2_if_false:
l_f1_0:
    jmp     l_f1_17                 #  21:     goto   17
    jmp     l_f1_17                 #  22:     goto   17
    movl    $1, %eax                #  23:     assign t5 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f1_18                 #  24:     goto   18
l_f1_17:
    movl    $0, %eax                #  26:     assign t5 <- 0
    movb    %al, -21(%ebp)         
l_f1_18:
    movzbl  -21(%ebp), %eax         #  28:     assign v0 <- t5
    movb    %al, -29(%ebp)         
    call    ReadInt                 #  29:     call   t6 <- ReadInt
    movl    %eax, -28(%ebp)        

l_f1_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <ptr(4) to <array 9 of <array 2 of <array 1 of <array 3 of <array 7 of <int>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t5       <char> %ebp-21 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #   -1564(%ebp)  1536  [ $v1       <array 9 of <array 2 of <array 1 of <array 3 of <array 7 of <int>>>>>> %ebp-1564 ]
    #   -1568(%ebp)   4  [ $v2       <int> %ebp-1568 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $1556, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $389, %ecx             
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-1564(%ebp)          # local array 'v1': 5 dimensions
    movl    $9,-1560(%ebp)          #   dimension 1: 9 elements
    movl    $2,-1556(%ebp)          #   dimension 2: 2 elements
    movl    $1,-1552(%ebp)          #   dimension 3: 1 elements
    movl    $3,-1548(%ebp)          #   dimension 4: 3 elements
    movl    $7,-1544(%ebp)          #   dimension 5: 7 elements

    # function body
l_f2_1_while_cond:
    movl    $98, %eax               #   1:     if     98 >= 100 goto 2_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f2_2_while_body      
    jmp     l_f2_0                  #   2:     goto   0
l_f2_2_while_body:
    call    ReadInt                 #   4:     call   t3 <- ReadInt
    movl    %eax, -16(%ebp)        
    jmp     l_f2_1_while_cond       #   5:     goto   1_while_cond
l_f2_0:
    leal    -1564(%ebp), %eax       #   7:     &()    t4 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   8:     param  0 <- t4
    pushl   %eax                   
    call    f0                      #   9:     call   t5 <- f0
    addl    $4, %esp               
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  10:     return t5
    jmp     l_f2_exit              
    jmp     l_f2_8_if_false         #  11:     goto   8_if_false
    jmp     l_f2_11_if_false        #  12:     goto   11_if_false
    jmp     l_f2_9                  #  13:     goto   9
l_f2_11_if_false:
l_f2_9:
    jmp     l_f2_12                 #  16:     goto   12
l_f2_12:
    movl    $82040, %eax            #  18:     assign v2 <- 82040
    movl    %eax, -1568(%ebp)      
    call    ReadInt                 #  19:     call   t6 <- ReadInt
    movl    %eax, -28(%ebp)        
    jmp     l_f2_6                  #  20:     goto   6
l_f2_8_if_false:
l_f2_6:

l_f2_exit:
    # epilogue
    addl    $1556, %esp             # remove locals
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
    jmp     l_test_exit            
    movl    $62174, %eax            #   1:     add    t0 <- 62174, 13005
    movl    $13005, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $29246, %eax            #   2:     if     29246 = t0 goto 2
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_test_2               
    jmp     l_test_3                #   3:     goto   3
l_test_2:
    movl    $1, %eax                #   5:     assign t1 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_test_4                #   6:     goto   4
l_test_3:
    movl    $0, %eax                #   8:     assign t1 <- 0
    movb    %al, -17(%ebp)         
l_test_4:
    movzbl  -17(%ebp), %eax         #  10:     assign v0 <- t1
    movb    %al, v0                
    call    ReadInt                 #  11:     call   t2 <- ReadInt
    movl    %eax, -24(%ebp)        
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

    # scope: test
_str_1:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
v0:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
